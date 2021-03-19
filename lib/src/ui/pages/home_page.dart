import 'package:easy_meditation/src/base/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/base/assets.dart';
import 'package:easy_meditation/src/ui/views/home_view.dart';
import 'package:easy_meditation/src/ui/pages/course_detail.dart';
import 'package:easy_meditation/src/ui/views/preferences_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;
  static final pageController = PageController();
  static final controller = CourseDetailPageController();

  final _pages = <Widget>[
    HomeView(pageController, controller),
    CourseDetailPage(controller),
    PreferencesView(),
  ];

  @override
  void initState() {
    super.initState();
    AppData().fuse();
    controller.courseId = AppData().progress;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        children: _pages,
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          pageController.jumpToPage(index);
        },
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
