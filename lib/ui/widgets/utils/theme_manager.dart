import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;
  toggleTheme(bool theme) {
    _themeMode = theme ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
