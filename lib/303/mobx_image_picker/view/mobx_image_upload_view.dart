import 'package:flutter/material.dart';
import '../viewModel/image_upload_view_model.dart';
import '../../../product/utility/image_upload.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';

class MobxImageUpload extends StatefulWidget {
  const MobxImageUpload({Key? key}) : super(key: key);

  @override
  State<MobxImageUpload> createState() => _MobxImageUploadState();
}

class _MobxImageUploadState extends State<MobxImageUpload> {
  final String _imageUplaodLottiePath = 'https://assets3.lottiefiles.com/packages/lf20_urbk83vw.json';

  final _imageUploadViewModel = ImageUploadViewModel();
  final _imageUploadManger = ImageUploadManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.save),
          onPressed: () {
            _imageUploadViewModel.saveDataToService();
          }),
      appBar: AppBar(
        title: const Text('Image Upload'),
        actions: [
          Observer(builder: (_) {
            return _imageUploadViewModel.isLoading ? const CircularProgressIndicator() : const SizedBox();
          }),
          Observer(builder: (_) {
            return Text(_imageUploadViewModel.downloadText);
          })
        ],
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Card(
            elevation: 10,
            child: Row(
              children: [
                Expanded(child: _localImage()),
                Expanded(child: _imageUploadButton()),
              ],
            ),
          ),
        ),
        const Divider(),
        Expanded(
          flex: 4,
          child: _imageNetwork(),
        )
      ]),
    );
  }

  Observer _localImage() {
    return Observer(
      builder: (context) {
        return _imageUploadViewModel.file != null ? Image.file(_imageUploadViewModel.file!) : const SizedBox();
      },
    );
  }

  FittedBox _imageUploadButton() {
    return FittedBox(
      child: IconButton(
          onPressed: () async {
            _imageUploadViewModel.saveLocalFile(await _imageUploadManger.fetchFromLibrary());
          },
          icon: Lottie.network(_imageUplaodLottiePath)),
    );
  }

  Observer _imageNetwork() {
    return Observer(builder: (_) {
      return _imageUploadViewModel.imageUrl.isNotEmpty
          ? Image.network(_imageUploadViewModel.imageUrl)
          : const SizedBox();
    });
  }
}
