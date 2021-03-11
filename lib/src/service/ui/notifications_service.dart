import 'package:flutter/material.dart';
import 'package:timezone/timezone.dart';
import 'package:timezone/data/latest.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationsService {
  static FlutterLocalNotificationsPlugin _plugin;

  static Future<void> initialize() async {
    initializeTimeZones();

    _plugin = FlutterLocalNotificationsPlugin();
    await _plugin.initialize(
      InitializationSettings(
        android: AndroidInitializationSettings('ic_launcher'),
      ),
      onSelectNotification: (d) async => print('notification selected: $d'),
    );
  }

  Future<void> clearNotifications() => _plugin.cancelAll();

  Future<void> schedule(List<bool> weekdays, TimeOfDay time) async {
    await clearNotifications();

    var now = DateTime.now().subtract(Duration(days: 0));
    now = now.subtract(Duration(days: now.weekday - 1));

    for (var i = 0; i < weekdays.length; ++i) {
      print('here$i');
      final date =
          DateTime(now.year, now.month, now.day + i, time.hour, time.minute);

      if (weekdays[i]) {
        await _plugin.zonedSchedule(
          i,
          'Its time to meditate',
          '',
          TZDateTime.from(date, local),
          NotificationDetails(
            android: AndroidNotificationDetails(
                '0', 'Meditation Reminder', 'Reminds the user to meditate'),
          ),
          androidAllowWhileIdle: true,
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime,
          matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
        );

        print('scheduling');
      }
    }
  }
}
