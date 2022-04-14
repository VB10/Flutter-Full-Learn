// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_upload_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImageUploadViewModel on _ImageUploadViewModelBase, Store {
  final _$imageUrlAtom = Atom(name: '_ImageUploadViewModelBase.imageUrl');

  @override
  String get imageUrl {
    _$imageUrlAtom.reportRead();
    return super.imageUrl;
  }

  @override
  set imageUrl(String value) {
    _$imageUrlAtom.reportWrite(value, super.imageUrl, () {
      super.imageUrl = value;
    });
  }

  final _$fileAtom = Atom(name: '_ImageUploadViewModelBase.file');

  @override
  File? get file {
    _$fileAtom.reportRead();
    return super.file;
  }

  @override
  set file(File? value) {
    _$fileAtom.reportWrite(value, super.file, () {
      super.file = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_ImageUploadViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$downloadTextAtom =
      Atom(name: '_ImageUploadViewModelBase.downloadText');

  @override
  String get downloadText {
    _$downloadTextAtom.reportRead();
    return super.downloadText;
  }

  @override
  set downloadText(String value) {
    _$downloadTextAtom.reportWrite(value, super.downloadText, () {
      super.downloadText = value;
    });
  }

  final _$_ImageUploadViewModelBaseActionController =
      ActionController(name: '_ImageUploadViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_ImageUploadViewModelBaseActionController
        .startAction(name: '_ImageUploadViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_ImageUploadViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateDownloadText(int send, int total) {
    final _$actionInfo = _$_ImageUploadViewModelBaseActionController
        .startAction(name: '_ImageUploadViewModelBase.updateDownloadText');
    try {
      return super.updateDownloadText(send, total);
    } finally {
      _$_ImageUploadViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void uploadImageUrl(ImageUploadResponse? response) {
    final _$actionInfo = _$_ImageUploadViewModelBaseActionController
        .startAction(name: '_ImageUploadViewModelBase.uploadImageUrl');
    try {
      return super.uploadImageUrl(response);
    } finally {
      _$_ImageUploadViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void saveLocalFile(XFile? file) {
    final _$actionInfo = _$_ImageUploadViewModelBaseActionController
        .startAction(name: '_ImageUploadViewModelBase.saveLocalFile');
    try {
      return super.saveLocalFile(file);
    } finally {
      _$_ImageUploadViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageUrl: ${imageUrl},
file: ${file},
isLoading: ${isLoading},
downloadText: ${downloadText}
    ''';
  }
}
