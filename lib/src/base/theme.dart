import 'package:flutter/material.dart';

/// Holds all the data related to [Theme] of application.
///
/// All the common [Color], [TextStyle] or any kind of [ThemeData] that is
/// used inside the application repeatedly must be placed here to reduce
/// redundancy (i.e. improve code-quality and debugging)
abstract class AppTheme {
  /// Dark Theme of [App]
  static final dark = ThemeData(
    brightness: Brightness.dark,
  );

  /// Light Theme of [App]
  static final light = ThemeData(
    brightness: Brightness.light,
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      border: OutlineInputBorder(),
    )
  );
}