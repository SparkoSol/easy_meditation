import 'package:easy_meditation/src/models/module.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/views/imaged_view.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerPage extends StatefulWidget {
  final Module module;

  AudioPlayerPage(this.module);

  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  var isLoading = true;
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();

    final url =
        dioClient.options.baseUrl + '/courses/modules/' + widget.module.id;

    /// Player configurations;
    player.setAudioSource(
      LockCachingAudioSource(Uri.parse(url)),
      preload: true,
    );

    player.setLoopMode(LoopMode.off);
  }

  @override
  Widget build(BuildContext context) {
    player.durationStream.listen((value) {
      setState(() => isLoading = false);
    });

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
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
        middle: Text(Module.courses[widget.module.courseNumber]),
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
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
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    builder: (context) {
                      return ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 20,
                              bottom: 10,
                            ),
                            child: Text(
                              'Up next',
                              style: AppTheme.sectionHeaderStyle,
                            ),
                          ),
                          // ModuleWidget(),
                          // ModuleWidget(),
                          // ModuleWidget(),
                          // ModuleWidget(),
                          // ModuleWidget(),
                        ],
                      );
                    },
                  );
                },
                style: TextButton.styleFrom(
                  primary: Colors.grey.shade800,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
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
                    widget.module.name,
                    style: AppTheme.sectionHeaderStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 70),
                    child: Text(
                      '${Module.courses[widget.module.courseNumber]} level',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SeekControl(player),
                      PlayPauseButton(player: player, loading: isLoading),
                      SeekControl(player, true),
                    ],
                  ),
                  StreamBuilder<Duration>(
                    stream: player.positionStream,
                    builder: (context, snapshot) {
                      return Column(
                        children: [
                          Slider(
                            value: !isLoading
                                ? snapshot.data.inSeconds /
                                    player.duration?.inSeconds
                                : 0,
                            activeColor: Color(0xFF252223),
                            inactiveColor: Color(0x11252223),
                            onChanged: (double value) {
                              player.seek(player.duration * value);
                            },
                          ),
                          if (isLoading)
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
                                Text(_toTime(player.position)),
                                Spacer(),
                                Text('-' +
                                    _toTime(player.duration - player.position)),
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
    player.dispose();
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
  final bool loading;
  final AudioPlayer player;

  PlayPauseButton({this.player, this.loading = false});

  @override
  _PlayPauseButtonState createState() => _PlayPauseButtonState();
}

class _PlayPauseButtonState extends State<PlayPauseButton> {
  @override
  Widget build(BuildContext context) {
    Widget child;
    if (widget.loading) {
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
        onPressed: !widget.loading
            ? () {
                if (widget.player.playing) {
                  widget.player.pause();
                } else {
                  widget.player.play();
                }

                setState(() {});
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
  SeekControl(AudioPlayer player, [bool forward = false])
      : super(
          onPressed: () {
            if (player.playing) {
              if (forward) {
                player.seek(player.position + Duration(seconds: 15));
              } else {
                player.seek(player.position - Duration(seconds: 15));
              }
            }
          },
          style: TextButton.styleFrom(
            primary: Color(0xFF252223),
            minimumSize: Size(40, 40),
          ),
          child: Stack(children: [
            Icon(
              forward
                  ? CupertinoIcons.arrow_clockwise
                  : CupertinoIcons.arrow_counterclockwise,
              size: 40,
            ),
            Positioned(
              top: 21,
              left: 13.5,
              child: Text('15', style: TextStyle(fontSize: 10)),
            )
          ]),
        );
}
