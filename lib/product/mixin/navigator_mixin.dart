import 'package:flutter/cupertino.dart';
import 'package:flutter_full_learn/product/navigator/navigator_manager.dart';

mixin NavigatorMixin<T extends StatefulWidget> on State<T> {
  NavigatorManager get router => NavigatorManager.instance;
}
