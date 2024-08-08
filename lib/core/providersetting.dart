import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProvderSetting extends ChangeNotifier {
  String langCode = "en";
  ThemeMode themmodeApp = ThemeMode.light;

  changLanguage(String newLanguage) {
    langCode = newLanguage;
    notifyListeners();
  }

  String BK() {
    return themmodeApp != ThemeMode.dark ? "assets/image/default_bg.png" :
    "assets/image/dark_bg.png";
  }

  isDark() {
    return  themmodeApp==ThemeMode.dark;
  }

  void changthem(ThemeMode newmode) {
    if (newmode == themmodeApp) return;
    themmodeApp = newmode;
    notifyListeners();
  }


}
