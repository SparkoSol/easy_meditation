import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/views/imaged_view.dart';
import 'package:easy_meditation/src/ui/widgets/module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioPlayerPage extends StatefulWidget {
  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  var total = 120.0;
  var progress = 0.0;
  var isPlaying = false;

  final roundBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50));

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.zero,
        middle: Text('Beginner'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: AppTheme.primaryColor,
                  padding: EdgeInsets.zero,
                  shape: roundBorder,
                ),
                child: Icon(
                  Icons.favorite_outline,
                  size: 22,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            SizedBox(
              width: 30,
              height: 30,
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                    ),
                    builder: (context) {
                      return ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                            child: Text('Up next', style: AppTheme.sectionHeaderStyle),
                          ),
                          ModuleWidget(),
                          ModuleWidget(),
                          ModuleWidget(),
                          ModuleWidget(),
                          ModuleWidget(),
                        ],
                      );
                    },
                  );
                },
                style: TextButton.styleFrom(
                  primary: Colors.grey.shade800,
                  padding: EdgeInsets.zero,
                  shape: roundBorder,
                ),
                child: Icon(Icons.more_vert, size: 22),
              ),
            ),
          ],
        ),
      ),
      child: Material(
        child: ImagedView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 4),
              Expanded(
                  flex: 7,
                  child: Column(children: [
                    Text('Module 1', style: AppTheme.sectionHeaderStyle),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 70),
                      child: Text('Advanced level'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => setState(() {
                            progress -= 15;

                            if (progress < 0) progress = 0;
                          }),
                          style: TextButton.styleFrom(
                            primary: Color(0xFF252223),
                            minimumSize: Size(40, 40),
                          ),
                          child: Stack(children: [
                            Icon(CupertinoIcons.arrow_counterclockwise,
                                size: 40),
                            Positioned(
                              top: 21,
                              left: 13.5,
                              child: Text('15', style: TextStyle(fontSize: 10)),
                            )
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isPlaying = !isPlaying;
                              });
                            },
                            style: TextButton.styleFrom(
                              shape: roundBorder,
                              primary: Colors.white,
                              minimumSize: Size(90, 90),
                              backgroundColor: Color(0xFF252223),
                            ),
                            child: isPlaying
                                ? Icon(CupertinoIcons.pause, size: 40)
                                : Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Icon(CupertinoIcons.play_fill,
                                        size: 40),
                                  ),
                          ),
                        ),
                        TextButton(
                          onPressed: () => setState(() {
                            progress += 15;

                            if (progress > total) progress = total;
                          }),
                          style: TextButton.styleFrom(
                            primary: Color(0xFF252223),
                            minimumSize: Size(40, 40),
                          ),
                          child: Stack(children: [
                            Icon(CupertinoIcons.arrow_clockwise, size: 40),
                            Positioned(
                              top: 21,
                              left: 13.5,
                              child: Text('15', style: TextStyle(fontSize: 10)),
                            )
                          ]),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Slider(
                        min: 0,
                        max: total,
                        activeColor: Color(0xFF252223),
                        inactiveColor: Color(0x11252223),
                        value: progress,
                        onChanged: (val) {
                          setState(() {
                            progress = val;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(children: [
                        Text(_toTime(progress)),
                        Spacer(),
                        Text(_toTime(total)),
                      ]),
                    )
                  ])),
            ],
          ),
        ),
      ),
    );
  }

  String _toTime(double value) {
    final minutes = value ~/ 60;
    final seconds = value - (minutes * 60);

    return '$minutes:${seconds.toInt()}';
  }
}
