import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

import 'custom_exception.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);

  void toShare(String path) async {
    await launch(path);
  }
}

class FileDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    return true;
  }

  void smsShare() {}
}

class SMSDownload implements IFileDownload {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    print('a');

    return true;
  }

  @override
  Future<void> toShare(String path) async {
    await launch("sms:$path");
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

class VeliDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    // TODO: implement downloadItem
    throw UnimplementedError();
  }
}

mixin ShareMixin on IFileDownload {
  void toShowFile() {}
}
