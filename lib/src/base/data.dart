import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppData {
  static SharedPreferences _preferences;

  static Future<void> initiate() async {
    _preferences = await SharedPreferences.getInstance();
  }

  bool get reminder => _preferences.getBool('reminder') ?? false;

  set reminder(bool value) => _preferences.setBool('reminder', value);

  TimeOfDay get reminderTime {
    final time = _preferences.getString('reminderTime');
    if (time == null) return null;

    final parts = time.split(':');
    return TimeOfDay(
      hour: int.parse(parts.first),
      minute: int.parse(parts.last),
    );
  }

  set reminderTime(TimeOfDay value) {
    if (value == null) return;
    _preferences.setString('reminderTime', '${value.hour}:${value.minute}');
  }

  List<bool> get reminderDays => [
        _preferences.getBool('m') ?? false,
        _preferences.getBool('t') ?? false,
        _preferences.getBool('w') ?? false,
        _preferences.getBool('th') ?? false,
        _preferences.getBool('f') ?? false,
        _preferences.getBool('s') ?? false,
        _preferences.getBool('su') ?? false,
      ];

  set reminderDays(List<bool> values) {
    _preferences.setBool('m', values[0]);
    _preferences.setBool('t', values[1]);
    _preferences.setBool('w', values[2]);
    _preferences.setBool('th', values[3]);
    _preferences.setBool('f', values[4]);
    _preferences.setBool('s', values[5]);
    _preferences.setBool('su', values[6]);
  }
}
