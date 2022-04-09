import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/utility/image_upload_manager.dart';

import '../../product/utility/image_upload.dart';

class ImagePickerGenericView extends StatefulWidget {
  const ImagePickerGenericView({Key? key}) : super(key: key);

  @override
  State<ImagePickerGenericView> createState() => _ImagePickerGenericViewState();
}

class _ImagePickerGenericViewState extends State<ImagePickerGenericView> {
  final _imageUploadManger = ImageUploadManager();
  late final ImageUploadCustomManager _imaegUploadCustomManager;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _imaegUploadCustomManager = ImageUploadCustomManager(LibraryImageUpload());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              _imaegUploadCustomManager.cropWithFetch();
            },
            child: const Text('Fetch from gallery')),
        ElevatedButton(
            onPressed: () {
              _imageUploadManger.fetchFromLibrary();
            },
            child: const Text('Fetch from normal')),
        ElevatedButton(onPressed: () {}, child: const Text('Fetch from multiple')),
      ]),
    );
  }
}
