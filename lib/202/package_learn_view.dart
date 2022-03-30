import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/package/loading_bar.dart';

import 'package/launch_mixin.dart';

class PackagLearnView extends StatefulWidget {
  const PackagLearnView({Key? key}) : super(key: key);

  @override
  State<PackagLearnView> createState() => _PackagLearnViewState();
}

class _PackagLearnViewState extends State<PackagLearnView> with LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
          onPressed: () {
            launchURL('aa');
          }),
      body: Column(
        children: [
          Text('a', style: Theme.of(context).textTheme.subtitle1),
          const LoadingBar(),
        ],
      ),
    );
  }

  @override
  void name(args) {}
}
