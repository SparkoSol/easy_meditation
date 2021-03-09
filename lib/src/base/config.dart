import 'package:flutter/material.dart';

/// Global Configurations of application (Represents state of application).
///
/// These configurations are responsible for changing state of application at
/// runtime. Whenever a configuration is changed, application rebuilds itself to
/// reflect changes.
///
/// Some common configurations are,
/// * See [ThemeMode] -> represents [Theme] of application i.e. light or dark.
/// * See [Locale] -> represents locale of application i.e. Locale('en')
class AppConfig extends ChangeNotifier {
  AppConfig._();

  factory AppConfig() => _instance;
  static final _instance = AppConfig._();

  ThemeMode _themeMode = ThemeMode.light;
  Locale _locale = Locale('en');

  ThemeMode get themeMode => _themeMode;

  set themeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }

  Locale get locale => _locale;

  set locale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}
