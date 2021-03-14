import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/models/module.dart';
import 'package:easy_meditation/src/service/rest/modules_rest.dart';
import 'package:easy_meditation/src/ui/views/colored_background.dart';
import 'package:easy_meditation/src/ui/widgets/module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseDetailPageController extends ChangeNotifier {
  int _courseId;
  int get courseId => _courseId;
  set courseId(int value) {
    _courseId = value;
    notifyListeners();
  }
}

class CourseDetailPage extends StatefulWidget {
  final CourseDetailPageController controller;
  CourseDetailPage(this.controller);

  @override
  _CourseDetailPageState createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(middle: Text(Module.courses[widget.controller.courseId])),
      body: ColoredBackground(
        child: FutureBuilder<List<Module>>(
          future: ModulesRestAPI().getModules(widget.controller.courseId),
          builder: (context, AsyncSnapshot<List<Module>> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(child: Text('No Connection'));
                break;
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
                break;
              case ConnectionState.active:
                return Center(child: CircularProgressIndicator());
                break;
              case ConnectionState.done:
                break;
            }

            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
             }

            return CustomScrollView(slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 190,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${Module.courses[widget.controller.courseId]} Course',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.darkBlueColor,
                        ),
                      ),
                      Text(
                        '${snapshot.data.length} Modules',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      Spacer(),
                      Row(children: [
                        Expanded(
                          child: TextButton.icon(
                            onPressed: () {},
                            label: Text('Start'),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: AppTheme.darkBlueColor,
                            ),
                            icon: Icon(CupertinoIcons.play_arrow_solid),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            label: Expanded(
                                child: Text(
                              '2 HOURS, 20 MIN',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                              ),
                            )),
                            style: OutlinedButton.styleFrom(
                              primary: AppTheme.darkBlueColor,
                              side: BorderSide(color: AppTheme.darkBlueColor),
                            ),
                            icon: Icon(CupertinoIcons.time),
                          ),
                        ),
                      ])
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryColor1,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(40),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                sliver: SliverToBoxAdapter(
                  child: Row(children: [
                    Expanded(
                      child: Row(children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text('${snapshot.data.fold(0, (pv, e) => pv + e.favorites)} Favorites'),
                        ),
                      ]),
                    ),
                    Expanded(
                      child: Row(children: [
                        Icon(
                          Icons.headset,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text('${snapshot.data.fold(0, (pv, e) => pv + e.listened)} Listened'),
                        ),
                      ]),
                    )
                  ]),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                sliver: SliverToBoxAdapter(
                    child: Text(
                  'Meditations',
                  style: AppTheme.sectionHeaderStyle,
                )),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ModuleWidget(snapshot.data[index]),
                  childCount: snapshot.data.length,
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 100)),
            ]);
          },
        ),
      ),
    );
  }
}
