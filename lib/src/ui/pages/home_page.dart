import 'package:easy_meditation/generated/XDMobile12columns1.dart';
import 'package:easy_meditation/generated/XDMobile12columns4.dart';
import 'package:easy_meditation/generated/XDMobile12columns7.dart';
import 'package:easy_meditation/generated/XDUserinput.dart';
import 'package:easy_meditation/src/base/assets.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/modals/notifications_management.dart';
import 'package:easy_meditation/src/ui/modals/payment_bottom_sheet.dart';
import 'package:easy_meditation/src/ui/pages/about_us_page.dart';
import 'package:easy_meditation/src/ui/pages/audio_player_page.dart';
import 'package:easy_meditation/src/ui/pages/course_detail.dart';
import 'package:easy_meditation/src/ui/pages/login_page.dart';
import 'package:easy_meditation/src/ui/pages/welcome_page.dart';
import 'package:easy_meditation/src/ui/views/home_view.dart';
import 'package:easy_meditation/src/ui/views/payment/payment_info_view.dart';
import 'package:easy_meditation/src/ui/views/preferences_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;

  final _pages = <Widget>[
    HomeView(),
    CourseDetailPage(),
    PreferencesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: [
          _bottomNavBarItem(
            label: 'Home',
            image: Assets.homeIcon,
            focused: _selectedIndex == 0,
          ),
          _bottomNavBarItem(
            label: 'Meditate',
            image: Assets.lotusIcon,
            focused: _selectedIndex == 1,
          ),
          _bottomNavBarItem(
            label: 'Profile',
            image: Assets.profileIcon,
            focused: _selectedIndex == 2,
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItem _bottomNavBarItem({
  String label,
  String image,
  bool focused = false,
}) {
  Widget widget;

  if (focused) {
    widget = Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppTheme.primaryColor,
      ),
      child: Center(child: Image.asset(image, color: Colors.white, height: 30)),
    );
  } else {
    widget = Container(
      width: 45,
      height: 45,
      child: Center(child: Image.asset(image, color: Colors.grey, height: 30)),
    );
  }

  return BottomNavigationBarItem(
    label: label,
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: widget,
    ),
  );
}
