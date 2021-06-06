import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/ui/views/colored_background.dart';
import 'package:easy_meditation/src/ui/views/localized_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountSettingsPage extends StatefulWidget {
  @override
  _AccountSettingsPageState createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  final _appData = AppData();

  @override
  Widget build(BuildContext context) {
    return LocalizedView(
      builder: (context, lang) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CupertinoNavigationBar(
          backgroundColor: Colors.transparent,
          middle: Text(lang.accountSettings),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: ListTile(
                title: Text(lang.autoLoopMode),
                trailing: CupertinoSwitch(
                  value: _appData.autoplay,
                  onChanged: (val) {
                    setState(() {
                      _appData.autoplay = val;
                    });
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
