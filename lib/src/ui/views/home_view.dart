import 'package:easy_meditation/src/ui/pages/course_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/widgets/module_card.dart';
import 'package:easy_meditation/src/ui/views/colored_background.dart';

class HomeView extends StatelessWidget {
  final PageController _pC;
  final CourseDetailPageController _cC;

  HomeView([this._pC, this._cC]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      appBar: CupertinoNavigationBar(middle: Text('Home')),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          color: AppTheme.primaryColor,
          child: SizedBox(
            height: 70,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: AppTheme.primaryColor1,
                  child: Icon(
                    Icons.account_circle,
                    size: 60,
                    color: AppTheme.darkBlueColor,
                  ),
                ),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome, Kristin',
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(height: 2),
                      Text(
                        'Live happier with us',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: ColoredBackground(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: Text(
                      'Choose a Level',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Row(children: [
                    Expanded(
                        child: ModuleCard(
                            index: 0,
                            onPressed: () {
                              _pC.jumpToPage(1);
                              _cC.courseId = 0;
                            })),
                    SizedBox(width: 20),
                    Expanded(
                        child: ModuleCard(
                            index: 1,
                            onPressed: () {
                              _pC.jumpToPage(1);
                              _cC.courseId = 1;
                            })),
                  ]),
                  ModuleCard(
                    index: 2,
                    onPressed: () {
                      _pC.jumpToPage(1);
                      _cC.courseId = 2;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: Text(
                      'Recommended for you',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Column(children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: ListTile(
                        leading: Container(
                          width: 47,
                          height: 47,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppTheme.primaryColor),
                          ),
                          child: Icon(Icons.play_arrow,
                              color: AppTheme.primaryColor),
                        ),
                        title: Text('Module 1'),
                        subtitle: Text('Advanced Course'),
                        trailing: Text('10 min'),
                      ),
                    ),
                    Container(
                      height: 1,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.grey.shade600,
                            Colors.white
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(children: [
                      ListTile(
                        leading: Container(
                          width: 47,
                          height: 47,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppTheme.primaryColor),
                          ),
                          child: Icon(Icons.play_arrow,
                              color: AppTheme.primaryColor),
                        ),
                        title: Text('Module 1'),
                        subtitle: Text('Advanced Course'),
                        trailing: Text('10 min'),
                      ),
                      Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.grey.shade600,
                              Colors.white
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
