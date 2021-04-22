import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/models/module.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';
import 'package:easy_meditation/src/service/ui/lazy_task_service.dart';
import 'package:easy_meditation/src/service/ui/modal_services.dart';
import 'package:easy_meditation/src/ui/pages/audio_player_page.dart';
import 'package:easy_meditation/src/ui/views/colored_background.dart';
import 'package:easy_meditation/src/ui/widgets/module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class CourseDetailPageController extends ChangeNotifier {
  CourseDetailPageController();

  int _courseId = 0;

  int get courseId => _courseId;

  set courseId(int value) {
    _courseId = value ?? 0;
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
  int playingIndex;
  static final _player = AudioPlayer();

  _rebuild() {
    if (super.mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();

    AppData().saveProgress = widget.controller.courseId;
    widget.controller.addListener(_rebuild);
  }

  @override
  void dispose() {
    widget.controller.addListener(_rebuild);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color textColor;
    Color headerColor;
    Color button1Color;
    Color button2Color;
    Color button1TextColor;
    if (widget.controller.courseId == 0) {
      textColor = Colors.white;
      headerColor = AppTheme.darkBlueColor;
      button1Color = AppTheme.primaryColor;
      button1TextColor = Colors.white;
      button2Color = Colors.white;
    } else if (widget.controller.courseId == 1) {
      headerColor = Color(0xFFFFC97E);
      button1Color = AppTheme.darkBlueColor;
      button1TextColor = Colors.white;
      button2Color = AppTheme.darkBlueColor;
    } else {
      textColor = Colors.white;
      button1Color = Colors.white;
      button2Color = Colors.white;
      headerColor = Color(0xFF333242);
      button1TextColor = Color(0xFF333242);
    }

    final data = AppData.modules(widget.controller.courseId);

    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(Module.courses[widget.controller.courseId]),
      ),
      body: ColoredBackground(
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 190,
              padding: const EdgeInsets.all(20),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -100,
                    bottom: -100,
                    child: Image.asset(
                      'assets/images/curves.png',
                      width: MediaQuery.of(context).size.width * 1.5,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${Module.courses[widget.controller.courseId]} Course',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '${data.length} Modules',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      Spacer(),
                      Row(children: [
                        Expanded(
                          child: TextButton.icon(
                            onPressed: () {
                              if (data.isNotEmpty) {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return AudioPlayerPage(data[0], data);
                                }));
                              } else {
                                ModalService.scaffoldMessengerKey.currentState
                                    .showSnackBar(
                                  SnackBar(content: Text('No Modules')),
                                );
                              }
                            },
                            label: Text('Start'),
                            style: TextButton.styleFrom(
                              primary: button1TextColor,
                              backgroundColor: button1Color,
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
                                _toTime(data.fold(
                                    0, (p, e) => (p + e.length).toInt())),
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              primary: button2Color,
                              side: BorderSide(color: button2Color),
                            ),
                            icon: Icon(CupertinoIcons.time),
                          ),
                        ),
                      ])
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: headerColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
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
                      child: Text(
                          '${data.fold(0, (pv, e) => pv + e.favorites)} Favorites'),
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
                      child: Text(
                          '${data.fold(0, (pv, e) => pv + e.listened)} Listened'),
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
              (context, index) => ModuleWidget(
                data[index],
                () async {
                  await _player.pause();
                  playingIndex = null;
                  setState(() {
                    AppData.user.unRecommend(data[index]);

                    if (index < data.length - 1)
                      AppData.user.recommend(data[index + 1]);
                    AppData().writeFile();
                  });
                },
                index == playingIndex,
                true,
                () {
                  LazyTaskService.execute(context, () async {
                    AppData.user.unRecommend(data[index]);

                    if (index < data.length - 1)
                      AppData.user.recommend(data[index + 1]);
                    if (_player.playing && index == playingIndex) {
                      await _player.pause();
                      playingIndex = null;
                      setState(() {});
                    } else {
                      await _player.pause();
                      await _player.setAudioSource(
                        LockCachingAudioSource(Uri.parse(
                          '$apiUrl/courses/modules/' + data[index].id,
                        )),
                      );

                      _player.positionStream.listen((event) {
                        if (_player.duration == null) return;
                        if ((_player.duration - event).inSeconds == 0) {
                          playingIndex = null;
                          setState(() {});
                        }
                      });

                      setState(() => playingIndex = index);
                      _player.play();
                    }
                  });
                },
              ),
              childCount: data.length,
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 100)),
        ]),
      ),
    );
  }

  String _toTime(int val) {
    final value = Duration(seconds: val);

    twoDigit(int value) {
      if (value < 10) return '0$value';
      return value;
    }

    String msString;
    final minutes = value.inMinutes.remainder(Duration.minutesPerHour);
    if (minutes >= 1) {
      msString = '${twoDigit(minutes)} MINUTES';
    } else {
      msString = '${twoDigit(value.inSeconds.remainder(Duration.secondsPerMinute))} SECONDS';
    }

    final hours = value.inHours;
    if (hours > 0) {
      return '${twoDigit(hours)} HOURS, $msString'.replaceAll('MINUTES', 'MIN');
    } else {
      return msString;
    }
  }
}
