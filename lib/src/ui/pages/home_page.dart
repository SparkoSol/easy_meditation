import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CupertinoNavigationBar(middle: Text('Home')),
      body: Stack(children: [
        Container(
          color: AppTheme.primaryColor,
          child: SizedBox(
            height: 200,
            child: Row(children: [
              CircleAvatar(
                radius: 35,
                child: Icon(Icons.account_circle, size: 60),
              ),
              Column(children: []),
            ]),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Meditate'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Profile'),
        ],
      ),
    );
  }
}
