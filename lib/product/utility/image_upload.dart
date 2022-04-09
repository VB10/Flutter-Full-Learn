import 'package:image_picker/image_picker.dart';

class ImageUploadManager {
  final ImagePicker _picker = ImagePicker();

  Future<XFile?> fetchFromLibrary() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    return image;
  }

  Future<XFile?> fetchFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    return image;
  }
}
