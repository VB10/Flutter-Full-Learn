import 'dart:io';

import 'package:dio/dio.dart';
import '../model/image_upload_response.dart';
import '../service/image_upload_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
part 'image_upload_view_model.g.dart';

class ImageUploadViewModel = _ImageUploadViewModelBase with _$ImageUploadViewModel;

abstract class _ImageUploadViewModelBase with Store {
  static const _baseUrl = 'https://firebasestorage.googleapis.com/v0/b/fluttertr-ead5c.appspot.com/o/';
  @observable
  String imageUrl = '';

  @observable
  File? file;
  @observable
  bool isLoading = false;

  @observable
  String downloadText = '';

  ImageUploadService imageUploadService = ImageUploadService(Dio(BaseOptions(baseUrl: _baseUrl)));

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  void updateDownloadText(int send, int total) {
    downloadText = '$send / $total';
  }

  @action
  void uploadImageUrl(ImageUploadResponse? response) {
    if (response == null) return;
    imageUrl = 'https://firebasestorage.googleapis.com/v0/b/fluttertr-ead5c.appspot.com/o/' +
        (response.name?.replaceFirst('/', '%2F') ?? '');
  }

  void init() {}

  @action
  void saveLocalFile(XFile? file) {
    if (file == null) return;
    this.file = File(file.path);
  }

  Future<void> saveDataToService() async {
    if (file == null) return;
    changeLoading();
    final response = await imageUploadService.uploadToImageServer(
      await file!.readAsBytes(),
      'vb',
      onSendProgress: (sent, total) {
        updateDownloadText(sent, total);
      },
    );
    uploadImageUrl(response);
  }
}
