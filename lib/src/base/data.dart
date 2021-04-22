import 'dart:convert';
import 'dart:io';

import 'package:easy_meditation/src/models/module.dart';
import 'package:easy_meditation/src/models/card.dart' as c;
import 'package:easy_meditation/src/models/register_request.dart';
import 'package:easy_meditation/src/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppData {
  static User user;
  static c.Card _card;
  static bool _autoplay;
  static List<String> favorites = [];
  static List<Module> recommended = [];
  static List<String> recommendations;
  static SharedPreferences _preferences;
  static String _filePath;
  static Transaction _transaction;

  static List<Module> beginner = [];
  static List<Module> advanced = [];
  static List<Module> intermediate = [];

  static List<Module> modules(int index) {
    if (index == 0) return beginner;
    if (index == 1) return intermediate;
    if (index == 2) return advanced;
  }

  Future writeFile() async {
    print(_filePath);
    await File(_filePath).writeAsString(jsonEncode({
      'user': user?.toJson() ?? null,
      'favorites': favorites,
      'recommended': recommended.map((e) => e.toJson()).toList(),
      'beginner': beginner,
      'advanced': advanced,
      'card': _card,
      'transaction': _transaction,
      'intermediate': intermediate,
    }));
  }

  void setModules(int index, List<Module> modules) {
    if (index == 0) beginner = modules;
    if (index == 1) intermediate = modules;
    if (index == 2) advanced = modules;
    writeFile();
  }

  void saveUser(User user) {
    AppData.user = user;
    writeFile();
  }

  Future deleteUser() async {
    AppData.user = null;
    _lastTimeProgress = 0;
    await writeFile();
  }

  void addFavorites(String value) {
    favorites.add(value);
    writeFile();
  }

  void deleteFavorites(String value) {
    favorites.remove(value);
    writeFile();
  }

  String get accessToken {
    return _preferences.getString('access_token') ?? '';
  }

  set accessToken(accessToken) {
    if (accessToken == null) {
      _preferences.remove('access_token');
    } else {
      _preferences.setString('access_token', accessToken);
    }
  }

  static Future<void> initiate() async {
    _preferences = await SharedPreferences.getInstance();
    _autoplay = _preferences.getBool('autoplay');
    _lastTimeProgress = _preferences.getInt('lastTimeProgress');
    print('Last Time Progress');
    print(_lastTimeProgress);

    _filePath = (await getApplicationDocumentsDirectory()).path + '/data.json';
    final file = File(_filePath);
    if (!(await file.exists())) {
      await file.create();
    }

    final chunk = await file.readAsString();
    final data = jsonDecode(chunk == '' ? '{}' : chunk) as Map;
    if (data.containsKey('user') && data['user'] != null) {
      user = User.fromJson(data['user']);
    }

    if (data.containsKey('favorites')) {
      favorites = (data['favorites'] as List).cast<String>();
    }

    if (data.containsKey('beginner')) {
      beginner = (data['beginner'] as List)
          ?.map((e) => Module.fromJson(e))
          ?.toList() ??
          [];
    }

    if (data.containsKey('advanced')) {
      advanced = (data['advanced'] as List)
          ?.map((e) => Module.fromJson(e))
          ?.toList() ??
          [];
    }

    if (data.containsKey('intermediate')) {
      intermediate = (data['intermediate'] as List)
          ?.map((e) => Module.fromJson(e))
          ?.toList() ??
          [];
    }

    if (data.containsKey('transaction')) {
      _transaction = Transaction.fromJson(data['transaction']);
    }
  }

  bool get isFirst => _preferences.getBool('isFirst') ?? true;

  void fuse() {
    _preferences?.setBool('isFirst', false);
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

  set autoplay(bool value) {
    _autoplay = value;
    _preferences.setBool('autoplay', _autoplay);
  }

  bool get autoplay => _autoplay ?? false;

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

  c.Card get card => _card;
  set card(c.Card card) {
    _card = card;
    writeFile();
  }

  Transaction get transaction => _transaction;
  set transaction(Transaction transaction) {
    _transaction = transaction;
    writeFile();
  }

  static int _lastTimeProgress = 0;
  int get progress => _lastTimeProgress;

  set saveProgress(int progress) {
    _lastTimeProgress = progress;
    _preferences.setInt('lastTimeProgress', progress);
  }
}

