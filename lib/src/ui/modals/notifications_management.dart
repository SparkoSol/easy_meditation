import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/views/colored_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsManagement extends StatefulWidget {
  @override
  _NotificationsManagementState createState() =>
      _NotificationsManagementState();
}

class _NotificationsManagementState extends State<NotificationsManagement> {
  var enabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(middle: Text('Notifications')),
      body: ColoredBackground(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text('Turn on the remainder', style: TextStyle(fontSize: 16)),
                Spacer(),
                CupertinoSwitch(value: false, onChanged: (val) {})
              ]),
              Text(
                'What time would you like to meditate',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Any time you can choose but\nWe recommend first time in morning.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'asd', suffixIcon: Icon(Icons.access_time_rounded)),
                ),
              ),
              Text(
                'What time would you like to meditate',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Any time you can choose but\nWe recommend first time in morning.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: MultipleBoxSelector(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MultipleBoxValue {
  final String value;
  final String displayName;

  const MultipleBoxValue(this.value, this.displayName);

  static const weekdays = [
    MultipleBoxValue('sunday', 'SU'),
    MultipleBoxValue('monday', 'M'),
    MultipleBoxValue('tuesday', 'T'),
    MultipleBoxValue('wednesday', 'W'),
    MultipleBoxValue('thursday', 'TH'),
    MultipleBoxValue('friday', 'F'),
    MultipleBoxValue('saturday', 'S'),
  ];
}

class MultipleBoxSelector extends StatefulWidget {
  @override
  _MultipleBoxSelectorState createState() => _MultipleBoxSelectorState();
}

class _MultipleBoxSelectorState extends State<MultipleBoxSelector> {
  var selectedIndexes = <int>{};

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(MultipleBoxValue.weekdays.length, (index) {
        print(selectedIndexes);
        final selected = selectedIndexes.contains(index);

        return GestureDetector(
          onTap: () {
            print('asd');
            if (selected) {
              selectedIndexes.remove(index);
            } else {
              selectedIndexes.add(index);
            }

            setState(() {});
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: selected ? AppTheme.primaryColor : Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: selected ? AppTheme.primaryColor : Colors.grey,
              ),
            ),
            child: Center(
              child: Text(
                MultipleBoxValue.weekdays[index].displayName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selected ? Colors.white : Colors.grey,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
