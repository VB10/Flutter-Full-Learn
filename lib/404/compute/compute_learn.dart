import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

import '../../product/init/lang/locale_keys.g.dart';

class ComputeLearnView extends StatefulWidget {
  const ComputeLearnView({Key? key}) : super(key: key);
  @override
  State<ComputeLearnView> createState() => _ComputeLearnViewState();
}

class _ComputeLearnViewState extends State<ComputeLearnView> {
  int _result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_result.toString()),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        int result = 0;
        for (var i = 0; i < 1000000000; i++) {
          result = i * i;
        }
        // final result = await compute(Calculator.sum, 1000000000);
        setState(() {
          _result = result;
        });
      }),
      body: Column(
        children: [const CircularProgressIndicator(), Text(LocaleKeys.login_welcome.tr()), const LoadingLottie()],
      ),
    );
  }
}

class Calculator {
  static int sum(int limit) {
    int result = 0;
    for (var i = 0; i < limit; i++) {
      result = i * i;
    }
    return result;
  }
}
