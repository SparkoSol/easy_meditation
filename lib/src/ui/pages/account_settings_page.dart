import 'package:easy_meditation/src/ui/views/colored_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountSettingsPage extends StatefulWidget {
  @override
  _AccountSettingsPageState createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CupertinoNavigationBar(
        backgroundColor: Colors.transparent,
        middle: Text('Account Settings'),
      ),
      body: ColoredBackground(
        child: Padding(
          padding: EdgeInsets.only(top: kToolbarHeight + 10),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: ListTile(
                title: Text('Always Repeat Music'),
                trailing: CupertinoSwitch(value: false, onChanged: (val) {}),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}