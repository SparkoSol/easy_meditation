import 'package:flutter/material.dart';

/// Holds all the data related to [Theme] of application.
///
/// All the common [Color], [TextStyle] or any kind of [ThemeData] that is
/// used inside the application repeatedly must be placed here to reduce
/// redundancy (i.e. improve code-quality and debugging)
abstract class AppTheme {
  static const primaryColor = Color(0xFFDE9600);
  static const primaryColor1 = Color(0xFFF1DEB8);

  static const darkBlueColor = Color(0xFF092C47);

  /// Dark Theme of [App]
  static final dark = ThemeData(
    brightness: Brightness.dark,
  );

  /// Light Theme of [App]
  static final light = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(bodyText1: TextStyle(color: Color(0xFF707070))),
    brightness: Brightness.light,
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      border: OutlineInputBorder(),
    ),
  );
}
