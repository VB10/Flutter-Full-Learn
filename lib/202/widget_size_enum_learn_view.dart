import 'package:flutter/material.dart';

class WidgetSizeEnumLaernView extends StatefulWidget {
  const WidgetSizeEnumLaernView({Key? key}) : super(key: key);

  @override
  State<WidgetSizeEnumLaernView> createState() => _WidgetSizeEnumLaernViewState();
}

class _WidgetSizeEnumLaernViewState extends State<WidgetSizeEnumLaernView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          height: WidgetSizes.normalCardHeight.value(),
          color: Colors.green,
        ),
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileWidth }

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;
      case WidgetSizes.circleProfileWidth:
        return 25;
    }
  }
}
