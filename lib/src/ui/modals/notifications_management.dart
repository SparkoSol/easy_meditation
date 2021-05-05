import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/views/localized_view.dart';
import 'package:easy_meditation/src/ui/views/colored_background.dart';
import 'package:easy_meditation/src/ui/widgets/weekdays_selector.dart';
import 'package:easy_meditation/src/service/ui/lazy_task_service.dart';
import 'package:easy_meditation/src/service/ui/notifications_service.dart';

class ReminderManagementPage extends StatefulWidget {
  @override
  _ReminderManagementPageState createState() =>
      _ReminderManagementPageState();
}

class _ReminderManagementPageState extends State<ReminderManagementPage> {
  final _data = AppData();

  bool enabled;
  TimeOfDay time;
  List<bool> weekdays;

  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    enabled = _data.reminder;
    time = _data.reminderTime;
    weekdays = _data.reminderDays;
  }

  @override
  Widget build(BuildContext context) {
    if (time != null) controller.text = time.format(context);

    return LocalizedView(
      builder: (context, lang) => Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text(lang.notifications),
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: ColoredBackground(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      lang.turnOnReminder,
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      value: enabled,
                      activeColor: AppTheme.primaryColor,
                      onChanged: (val) {
                        setState(() => enabled = val);
                        _setupReminderNotifications();
                      },
                    )
                  ]),
                  Opacity(
                    opacity: enabled ? 1 : .3,
                    child: IgnorePointer(
                      ignoring: !enabled,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              lang.meditateTime,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Text(
                          //   lang.notificationsTimeDetail,
                          //   style: TextStyle(
                          //     fontSize: 15,
                          //     color: Colors.grey,
                          //     fontWeight: FontWeight.w500,
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: TextFormField(
                              readOnly: true,
                              enabled: enabled,
                              controller: controller,
                              onTap: () async {
                                final data = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                  initialEntryMode: TimePickerEntryMode.input,
                                );

                                if (data != null) {
                                  time = data;
                                  controller.text = data.format(context);
                                  setState(() {});

                                  _setupReminderNotifications();
                                }
                              },
                              decoration: InputDecoration(
                                hintText: lang.chooseTime,
                                suffixIcon: Icon(Icons.access_time_rounded),
                              ),
                            ),
                          ),
                          Text(
                            lang.meditateDay,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(height: 10),
                          // Text(
                          //   lang.meditateDay,
                          //   style: TextStyle(
                          //     fontSize: 15,
                          //     color: Colors.grey,
                          //     fontWeight: FontWeight.w500,
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: WeekdaysSelector(weekdays, lang, (value) {
                              _setupReminderNotifications();
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _setupReminderNotifications() async {
    if (enabled) {
      await LazyTaskService.execute(context, () async {
        return NotificationsService().schedule(weekdays, time);
      });
    } else {
      NotificationsService().clearNotifications();
    }

    _data.reminder = enabled;
    _data.reminderTime = time;
    _data.reminderDays = weekdays;
  }
}
