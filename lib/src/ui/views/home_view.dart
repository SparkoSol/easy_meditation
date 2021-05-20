import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/base/locale.dart';
import 'package:easy_meditation/src/ui/pages/course_detail.dart';
import 'package:easy_meditation/src/ui/widgets/module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/widgets/module_card.dart';
import 'package:easy_meditation/src/ui/views/colored_background.dart';

class HomeView extends StatefulWidget {
  final PageController _pC;
  final CourseDetailPageController _cC;

  HomeView([this._pC, this._cC]);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      appBar: CupertinoNavigationBar(middle: Text(lang.home)),
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
                  child: Text(
                    '${lang.welcome}, ${AppData?.user?.name ?? ''}',
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(children: [
                    Expanded(
                      child: ModuleCard(
                        index: 0,
                        onPressed: () {
                          widget._pC.jumpToPage(1);
                          widget._cC.courseId = 0;
                        },
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ModuleCard(
                        index: 1,
                        onPressed: () {
                          widget._pC.jumpToPage(1);
                          widget._cC.courseId = 1;
                        },
                      ),
                    ),
                  ]),
                  ModuleCard(
                    index: 2,
                    onPressed: () {
                      widget._pC.jumpToPage(1);
                      widget._cC.courseId = 2;
                    },
                  ),
                  // if (AppData.recommended != null) ...[
                  //   Padding(
                  //     padding: const EdgeInsets.only(top: 10, bottom: 15),
                  //     child: Text(
                  //       'Recommended for you',
                  //       style: TextStyle(
                  //           fontWeight: FontWeight.bold, fontSize: 20),
                  //     ),
                  //   ),
                  //   Column(children: [
                  //     Container(
                  //       decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           borderRadius: BorderRadius.circular(4)),
                  //       child: ListTile(
                  //         leading: Container(
                  //           width: 47,
                  //           height: 47,
                  //           decoration: BoxDecoration(
                  //             shape: BoxShape.circle,
                  //             border: Border.all(color: AppTheme.primaryColor),
                  //           ),
                  //           child: Icon(Icons.play_arrow,
                  //               color: AppTheme.primaryColor),
                  //         ),
                  //         title: Text('Module 1'),
                  //         subtitle: Text('Advanced Course'),
                  //         trailing: Text('10 min'),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 1,
                  //       margin: const EdgeInsets.symmetric(horizontal: 10),
                  //       decoration: BoxDecoration(
                  //         gradient: LinearGradient(
                  //           colors: [
                  //             Colors.white,
                  //             Colors.grey.shade600,
                  //             Colors.white
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ]),
                  //   Container(
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(4)),
                  //     child: Column(children: [
                  //       ListTile(
                  //         leading: Container(
                  //           width: 47,
                  //           height: 47,
                  //           decoration: BoxDecoration(
                  //             shape: BoxShape.circle,
                  //             border: Border.all(color: AppTheme.primaryColor),
                  //           ),
                  //           child: Icon(Icons.play_arrow,
                  //               color: AppTheme.primaryColor),
                  //         ),
                  //         title: Text('Module 1'),
                  //         subtitle: Text('Advanced Course'),
                  //         trailing: Text('10 min'),
                  //       ),
                  //       Container(
                  //         height: 1,
                  //         decoration: BoxDecoration(
                  //           gradient: LinearGradient(
                  //             colors: [
                  //               Colors.white,
                  //               Colors.grey.shade600,
                  //               Colors.white
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ]),
                  //   ),
                  // ],
                  if (AppData.user.recommended?.isNotEmpty == true) ...[
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 15),
                      child: Text(
                        lang.recommendedForYou,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ModuleWidget(
                        AppData.user.recommended[0],
                        playing: false,
                        openPlayer: true,
                        onPlayerReturn: () => setState(() {}),
                      ),
                    ),
                    // for (var i = 0; i < AppData.user.recommended.length; ++i)
                  ]
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
