import 'package:image_picker/image_picker.dart';

abstract class IImageUpload {
  final ImagePicker picker = ImagePicker();
  Future<XFile?> fetch();
}

class ImageUploadCustomManager {
  final IImageUpload imageUpload;

  ImageUploadCustomManager(this.imageUpload);

  Future<XFile?> cropWithFetch() async {
    return await imageUpload.fetch();
  }
}

class LibraryImageUpload extends IImageUpload {
  @override
  Future<XFile?> fetch() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    return image;
  }
}

class CameraImageUpload extends IImageUpload {
  @override
  Future<XFile?> fetch() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    return image;
  }
}
