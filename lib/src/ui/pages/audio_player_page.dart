import 'dart:async';
import 'dart:convert';

import 'package:easy_meditation/src/base/locale.dart';
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
import 'package:just_audio/just_audio.dart';

class AudioPlayerPage extends StatefulWidget {
  final Module module;
  final List<Module> otherModules;
  final int index;
  final int playingIndex;
  final bool singleRequested;

  AudioPlayerPage(
    this.module, [
    this.otherModules = const [],
    this.index = 0,
    this.playingIndex = 0,
    this.singleRequested = false,
  ]);

  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  PlaylistController controller;

  _rebuild() => setState(() {});

  @override
  void initState() {
    super.initState();
    print('IN INIT');
    print(widget.singleRequested);
    controller = PlaylistController(
      widget.otherModules.isNotEmpty ? widget.otherModules : [widget.module],
      true,
      widget.index,
      widget.playingIndex,
      widget.singleRequested,
    )..addListener(_rebuild);
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
                    stream: controller.progress,
                    builder: (context, snapshot) {
                      var progress = 0.0;

                      Duration timeLeft;
                      Duration timeElapsed;
                      if (snapshot.data != null &&
                          !controller.loading &&
                          controller.currentDuration != null) {
                        progress = snapshot.data.inSeconds /
                            controller.currentDuration.inSeconds;

                        timeElapsed = snapshot.data;
                        timeLeft = controller.currentDuration - timeElapsed;
                      }

                      if (progress == 1 && !controller._isChanging) {
                        print('i am here');
                        print(controller._singleRequested);
                        print(controller._repeat);
                        if (controller._singleRequested && controller._repeat) {
                          controller._player.seek(Duration(seconds: 0));
                        } else {
                          controller.playNext();
                        }
                      }

                      return Column(
                        children: [
                          Slider(
                            value: progress,
                            activeColor: Color(0xFF252223),
                            inactiveColor: Color(0x11252223),
                            onChanged: (double value) {
                              controller
                                  .seekTo(controller.currentDuration * value);
                            },
                          ),
                          if (controller.loading)
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
  void _rebuild() => setState(() {});

  @override
  void initState() {
    super.initState();
    widget.player.addListener(_rebuild);
  }

  @override
  void dispose() {
    super.dispose();
    widget.player.removeListener(_rebuild);
  }

  @override
  Widget build(BuildContext context) {
    print('Playing: ${widget.player.playing}');

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
  final List<Module> _songs;
  var _player = AudioPlayer();
  int _playlistIndex;
  var _isChanging = false;

  PlaylistController(this._songs,
      [this.autoplay = false,
      int index = 0,
      int ind = 0,
      bool singleRequested = false]) {
    _index = ind;
    _module = _songs[_index];
    _loadModule(_songs[_index]);
    _playlistIndex = index;
    _singleRequested = singleRequested;
  }

  Module _module;
  var _index = 0;
  var _repeat = AppData().autoplay;
  var _loading = true;
  var _playing = false;
  var _singleRequested = false;

  var autoplay = false;

  Future _loadModule(Module module) async {
    _isChanging = true;

    try {
      await http.post(
        Uri.parse('$apiUrl/courses/modules/${module.id}/mark-listened'),
        body: jsonEncode({'userId': AppData.user.id}),
        headers: {'content-type': 'application/json'},
      );
      ++module.listened;
    } catch (e) {
      print(e);
    }

    _module = module;
    _loading = true;
    _playing = false;
    notifyListeners();

    final url = '$apiUrl/courses/modules/' + module.id;
    AppData.user.unRecommend(module);
    if (index < _songs.length - 1) {
      AppData.user.recommend(_songs[index + 1]);
    } else if (index == _songs.length - 1) {
      if (_playlistIndex == 0) {
        if (AppData.intermediate.isNotEmpty) {
          AppData.user.recommend(AppData.intermediate[0]);
        }
      } else if (_playlistIndex == 1) {
        if (AppData.advanced.isNotEmpty) {
          AppData.user.recommend(AppData.advanced[0]);
        }
      } else {
        if (AppData.beginner.isNotEmpty) {
          AppData.user.recommend(AppData.beginner[0]);
        }
      }
    }

    _player.setAudioSource(
      LockCachingAudioSource(Uri.parse(url)),
      preload: true,
    );
    _player.seek(Duration(seconds: 0));

    await _player.durationStream.first;
    _loading = false;

    if (autoplay) {
      play();
    } else {
      notifyListeners();
    }

    _isChanging = false;
  }

  void play() async {
    if (!_loading) {
      _player.play();
      _playing = true;

      notifyListeners();
    }
  }

  void pause() async {
    if (!_loading) {
      _player.pause();
      _playing = false;

      notifyListeners();
    }
  }

  Duration get currentDuration => _player.duration;

  Stream<Duration> get progress => _player.positionStream;

  bool get repeat => _repeat;

  bool get loading => _loading;

  bool get playing => _playing;

  Module get module => _module;

  List<Module> get modules => _songs;

  set repeat(bool value) {
    _repeat = value;
    notifyListeners();
  }

  int get index => _index;

  playSpecific(int index) {
    if (index > -1 && index < _songs.length)
      _loadModule(_songs[_index = index]);
  }

  bool canPlayNext() => index < (_songs.length - 1);

  bool canPlayPrev() => index > 0;

  playPrev() {
    if (_index > 0) _loadModule(_songs[--_index]);
  }

  playNext() async {
    print('I AM HERE');
    print(index);
    print(index < _songs.length);
    if (_index < _songs.length) {
      _loadModule(_songs[++_index]);
    } else if (_repeat) {
      _loadModule(_songs[_index = 0]);
    }
  }

  seekTo(Duration duration) {
    if (_playing) {
      _player.seek(duration);
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }
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
          for (var i = 0; i < widget.controller.modules.length; ++i) {
            final pressed = () {
              if (widget.controller.index == i) return;
              widget.controller.playSpecific(i);
            };

            if (i < widget.controller.index) {
              yield Opacity(
                opacity: .5,
                child: ModuleWidget(
                  widget.controller.modules[i],
                  onPressed: pressed,
                  playing: i == widget.controller.index,
                  openPlayer: false,
                ),
              );
            } else {
              yield ModuleWidget(
                widget.controller.modules[i],
                onPressed: pressed,
                playing: i == widget.controller.index,
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
