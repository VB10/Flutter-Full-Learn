import 'package:flutter/material.dart';

class SnippetLearnView extends StatefulWidget {
  const SnippetLearnView({Key? key}) : super(key: key);
  @override
  State<SnippetLearnView> createState() => _SnippetLearnViewState();
}

class _SnippetLearnViewState extends State<SnippetLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

class PRoductConstant {
  static PRoductConstant? _instace;
  static PRoductConstant get instance {
    _instace ??= PRoductConstant._init();
    return _instace!;
  }

  PRoductConstant._init();
}
