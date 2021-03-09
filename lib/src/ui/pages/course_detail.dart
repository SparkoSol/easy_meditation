import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/views/colored_background.dart';
import 'package:easy_meditation/src/ui/widgets/module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(middle: Text('Intermediate')),
      body: ColoredBackground(
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
              child: Container(
            height: 190,
            padding: const EdgeInsets.all(20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Intermediate Course', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppTheme.darkBlueColor
              ),),
              Text('2 Modules', style: TextStyle(
                color: Colors.grey.shade500
              ),),

              Spacer(),
              Row(children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    label: Text('Start'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: AppTheme.darkBlueColor
                    ),
                    icon: Icon(CupertinoIcons.play_arrow_solid),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    label: Expanded(child: Text('2 HOURS, 20 MIN', style: TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 10
                    ),)),
                    style: OutlinedButton.styleFrom(
                        primary: AppTheme.darkBlueColor,
                        side: BorderSide(color: AppTheme.darkBlueColor),
                    ),
                    icon: Icon(CupertinoIcons.time),
                  ),
                ),
              ])
            ]),
            decoration: BoxDecoration(
                color: AppTheme.primaryColor1,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(40))),
          )),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
            sliver: SliverToBoxAdapter(
              child: Row(children: [
                Expanded(
                  child: Row(children: [
                    Icon(Icons.favorite, color: Colors.red.shade300,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text('2000 Favorites'),
                    ),
                  ]),
                ),
                Expanded(
                  child: Row(children: [
                    Icon(Icons.headset, color: Colors.blue,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text('2000 Listened'),
                    ),
                  ]),
                )
              ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
            sliver: SliverToBoxAdapter(
                child: Text('Meditations', style: AppTheme.sectionHeaderStyle)),
          ),
          SliverList(delegate: SliverChildListDelegate([
            ModuleWidget(),
            ModuleWidget(),
            ModuleWidget(),
            ModuleWidget(),
            ModuleWidget(),
          ])),
          SliverToBoxAdapter(child: SizedBox(height: 100)),
        ]),
      ),
    );
  }
}
