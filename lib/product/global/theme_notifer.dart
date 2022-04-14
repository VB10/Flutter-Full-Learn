import 'package:flutter/material.dart';
import '../../202/theme/light_theme.dart';

class ThemeNotifer extends ChangeNotifier {
  bool isLighTheme = false;

  void changeTheme() {
    isLighTheme = !isLighTheme;
    notifyListeners();
  }

  ThemeData get currentTheme => !isLighTheme ? LighTheme().theme : ThemeData.dark();
}
