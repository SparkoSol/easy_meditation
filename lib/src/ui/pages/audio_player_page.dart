import 'dart:async';
import 'dart:convert';

import 'package:easy_meditation/src/base/config.dart';
import 'package:easy_meditation/src/base/locale.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_exoplayer/audioplayer.dart';
import 'package:http/http.dart' as http;
import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/models/module.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';
import 'package:easy_meditation/src/service/ui/lazy_task_service.dart';
import 'package:easy_meditation/src/ui/widgets/module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/views/imaged_view.dart';

class AudioPlayerPage extends StatefulWidget {
  final Module module;
  final List<Module> otherModules;
  final int index;
  final int playingIndex;

  AudioPlayerPage(this.module,
      [this.otherModules = const [], this.index = 0, this.playingIndex = 0]);

  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  PlaylistController controller;

  _rebuild() => setState(() {});

  @override
  void initState() {
    super.initState();
    controller = PlaylistController(
        songs: widget.otherModules.isNotEmpty
            ? widget.otherModules
            : [widget.module],
        currentIndex: widget.playingIndex
        // true,
        // widget.index,
        // widget.playingIndex
        )
      ..addListener(_rebuild);
  }

  Module get module => controller.module;

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);
    final isFav = AppData.favorites.contains(module.id);
    final modules = Module.getCourses(lang);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: Border.all(color: Colors.transparent),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(
            Icons.chevron_left,
            size: 30,
            color: AppTheme.darkBlueColor,
          ),
          onPressed: Navigator.of(context).pop,
        ),
        backgroundColor: Colors.transparent,
        padding: EdgeInsetsDirectional.zero,
        middle: Text(modules[module.courseNumber]),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child: TextButton(
                onPressed: () async {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Description'),
                      content: Text(module.description),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  primary: AppTheme.primaryColor,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Icon(
                  CupertinoIcons.info,
                  size: 22,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            SizedBox(
              width: 30,
              height: 30,
              child: TextButton(
                onPressed: () async {
                  LazyTaskService.execute(context, () async {
                    if (isFav) {
                      module.favorites--;
                      http.delete(
                          Uri.parse(
                              '$apiUrl/courses/modules/${module.id}/unmark-fav'),
                          body: jsonEncode({"userId": AppData.user.id}));
                      AppData.favorites.remove(module.id);
                    } else {
                      module.favorites++;
                      http.post(
                        Uri.parse(
                            '$apiUrl/courses/modules/${module.id}/mark-fav'),
                        body: jsonEncode({"userId": AppData.user.id}),
                      );

                      AppData.favorites.add(module.id);
                    }

                    setState(() {});
                  });
                },
                style: TextButton.styleFrom(
                  primary: AppTheme.primaryColor,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Icon(
                  isFav ? Icons.favorite : Icons.favorite_outline,
                  size: 22,
                  color: isFav ? AppTheme.primaryColor : Colors.grey.shade800,
                ),
              ),
            ),
            if (widget.otherModules.isNotEmpty)
              SizedBox(
                width: 30,
                height: 30,
                child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                      ),
                      builder: (context) => UpNextBottomSheet(controller),
                    );
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.grey.shade800,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
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
                  Text(
                    module.name,
                    style: AppTheme.sectionHeaderStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 70),
                    child: Text(
                      '${modules[module.courseNumber]} level',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SeekControl(controller._player, false, controller),
                      PlayPauseButton(player: controller),
                      SeekControl(controller._player, true, controller),
                    ],
                  ),
                  StreamBuilder<Duration>(
                    stream: controller._player.onAudioPositionChanged,
                    builder: (context, snapshot) {
                      var progress = 0.0;

                      Duration timeLeft;
                      Duration timeElapsed;
                      Duration currentDuration =
                          Duration(seconds: controller.module.length.toInt());
                      if (snapshot.data != null && currentDuration != null) {
                        progress =
                            snapshot.data.inSeconds / currentDuration.inSeconds;

                        timeElapsed = snapshot.data;
                        timeLeft = currentDuration - timeElapsed;
                      }

                      if (progress == 1) {
                        controller.playNext();
                      }

                      return Column(
                        children: [
                          Slider(
                            value: progress,
                            activeColor: Color(0xFF252223),
                            inactiveColor: Color(0x11252223),
                            onChanged: (double value) {
                              controller.seekTo(currentDuration * value);
                            },
                          ),
                          if (currentDuration == null)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Row(children: [
                                Text('--:--'),
                                Spacer(),
                                Text('--:--'),
                              ]),
                            )
                          else
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Row(children: [
                                Text(_toTime(timeElapsed)),
                                Spacer(),
                                Text('-' + _toTime(timeLeft)),
                              ]),
                            )
                        ],
                      );
                    },
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void dispose() {
    controller.removeListener(_rebuild);
    controller.dispose();
    super.dispose();
  }

  String _toTime(Duration value) {
    if (value == null) return '--:--';

    twoDigit(int value) {
      if (value < 10) return '0$value';
      return value;
    }

    final minutes = value.inMinutes.remainder(Duration.minutesPerHour);
    final seconds = value.inSeconds.remainder(Duration.secondsPerMinute);
    final msString = '${twoDigit(minutes)}:${twoDigit(seconds)}';

    final hours = value.inHours;
    if (hours > 0) {
      return '${twoDigit(hours)}:$msString';
    } else {
      return msString;
    }
  }
}

class PlayPauseButton extends StatefulWidget {
  final PlaylistController player;

  PlayPauseButton({this.player});

  @override
  _PlayPauseButtonState createState() => _PlayPauseButtonState();
}

class _PlayPauseButtonState extends State<PlayPauseButton> {
  void _rebuild() async {
    if (!mounted) return;

    if (SchedulerBinding.instance.schedulerPhase != SchedulerPhase.idle) {
      await SchedulerBinding.instance.endOfFrame;
      if (!mounted) return;
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    widget.player.addListener(_rebuild);
  }

  @override
  void dispose() {
    widget.player.removeListener(_rebuild);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (widget.player.loading) {
      child = CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation(Colors.white),
      );
    } else if (widget.player.playing) {
      child = Icon(CupertinoIcons.pause, size: 40);
    } else {
      child = Padding(
        padding: const EdgeInsets.only(left: 7),
        child: Icon(CupertinoIcons.play_fill, size: 40),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextButton(
        child: child,
        onPressed: !widget.player.loading
            ? () {
                if (widget.player.playing) {
                  widget.player.pause();
                } else {
                  widget.player.play();
                }
              }
            : null,
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          primary: Colors.white,
          minimumSize: Size(90, 90),
          backgroundColor: Color(0xFF252223),
        ),
      ),
    );
  }
}

class SeekControl extends TextButton {
  static _resolveAction(PlaylistController controller, bool forward) {
    if (controller.playing) {
      if (forward && controller.canPlayNext()) {
        return () => controller.playNext();
      } else if (!forward && controller.canPlayPrev()) {
        return () => controller.playPrev();
      }
    }
    return null;
  }

  SeekControl(
    AudioPlayer player, [
    bool forward = false,
    PlaylistController controller,
  ]) : super(
          onPressed: _resolveAction(controller, forward),
          style: TextButton.styleFrom(
            primary: Color(0xFF252223),
            minimumSize: Size(40, 40),
          ),
          child: Icon(
            forward
                ? CupertinoIcons.arrow_clockwise
                : CupertinoIcons.arrow_counterclockwise,
            size: 40,
          ),
        );
}

class PlaylistController extends ChangeNotifier {
  bool repeat;
  Module _module;
  int currentIndex;
  List<Module> songs;

  StreamSubscription<int> _indexChanged;
  StreamSubscription<PlayerState> _stateChanged;

  PlaylistController({this.songs, this.currentIndex}) {
    repeat = AppData().autoplay;
    _player.playAll(
        songs.map((e) => '$apiUrl/courses/modules/' + e.id).toList(),
        index: currentIndex);
    _player.seekIndex(currentIndex);

    _module = songs[currentIndex];
    _stateChanged = _player.onPlayerStateChanged.listen((event) {
      notifyListeners();
    });
    _indexChanged = _player.onCurrentAudioIndexChanged.listen((event) {
      _module = songs[event];
      notifyListeners();
    });
  }

  Module get module => _module;

  bool canPlayPrev() => currentIndex > 0;

  bool canPlayNext() => currentIndex < songs.length - 1;

  void playNext() {
    if (currentIndex == songs.length - 1 && repeat) {
      currentIndex = 0;
      _player.seekIndex(0);
    } else {
      ++currentIndex;
      _player.next();
    }
    notifyListeners();
  }

  void seekTo(Duration seekTo) {
    _player.seekPosition(seekTo);
  }

  void playSpecific(int index) {
    currentIndex = index;
    _player.seekIndex(index);
    notifyListeners();
  }

  bool get playing => _player.playerState == PlayerState.PLAYING;

  bool get loading => _player.playerState == PlayerState.BUFFERING;

  void playPrev() {
    if (currentIndex == 0) {
      return;
    } else {
      --currentIndex;
      _player.previous();
    }
    notifyListeners();
  }

  void pause() => _player.pause();

  void play() => _player.resume();

  @override
  void dispose() {
    _player.release();
    _player.dispose();
    _stateChanged.cancel();
    _indexChanged.cancel();
    super.dispose();
  }

  final _player = AudioPlayer();
}

class UpNextBottomSheet extends StatefulWidget {
  final PlaylistController controller;

  UpNextBottomSheet(this.controller);

  @override
  _UpNextBottomSheetState createState() => _UpNextBottomSheetState();
}

class _UpNextBottomSheetState extends State<UpNextBottomSheet> {
  _rebuild() => setState(() {});

  @override
  void initState() {
    widget.controller.addListener(_rebuild);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: Text('Up next', style: AppTheme.sectionHeaderStyle),
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  primary: widget.controller.repeat
                      ? Colors.white
                      : AppTheme.primaryColor,
                  backgroundColor: widget.controller.repeat
                      ? AppTheme.primaryColor
                      : Colors.white,
                  side: BorderSide(color: AppTheme.primaryColor),
                ),
                onPressed: () {
                  widget.controller.repeat = !widget.controller.repeat;
                },
                icon: Text('Loop'),
                label: Icon(CupertinoIcons.repeat),
              ),
            ],
          ),
        ),
        ...(() sync* {
          for (var i = 0; i < widget.controller.songs.length; ++i) {
            final pressed = () {
              if (widget.controller.currentIndex == i) return;
              widget.controller.playSpecific(i);
            };

            if (i < widget.controller.currentIndex) {
              yield Opacity(
                opacity: .5,
                child: ModuleWidget(
                  widget.controller.songs[i],
                  onPressed: pressed,
                  playing: i == widget.controller.currentIndex,
                  openPlayer: false,
                ),
              );
            } else {
              yield ModuleWidget(
                widget.controller.songs[i],
                onPressed: pressed,
                playing: i == widget.controller.currentIndex,
                openPlayer: false,
              );
            }
          }
        })()
      ],
    );
  }

  @override
  void dispose() {
    widget.controller.removeListener(_rebuild);
    super.dispose();
  }
}
