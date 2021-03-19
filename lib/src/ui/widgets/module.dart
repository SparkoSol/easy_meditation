import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/models/module.dart';
import 'package:easy_meditation/src/ui/pages/audio_player_page.dart';
import 'package:flutter/material.dart';

class ModuleWidget extends StatelessWidget {
  final bool playing;
  final Module module;
  final bool openPlayer;
  final VoidCallback onPressed;

  ModuleWidget(
    this.module, [
    this.onPressed,
    this.playing = false,
    this.openPlayer = true,
  ]);

  @override
  Widget build(BuildContext context) {
    Widget icon;
    if (playing) {
      icon = Transform.rotate(
        angle: -1.5708,
        child: Icon(Icons.sort, color: AppTheme.primaryColor),
      );
    } else {
      icon = Icon(Icons.play_arrow, color: AppTheme.primaryColor);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(children: [
        ListTile(
          onTap: () async {
            if (openPlayer) {
              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AudioPlayerPage(module),
              ));
            }
            onPressed?.call();
          },
          leading: Container(
            width: 47,
            height: 47,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppTheme.primaryColor),
            ),
            child: icon,
          ),
          title: Text(module.name),
          subtitle: Text(Module.courses[module.courseNumber]),
          trailing: Text(_toTimeSec(Duration(seconds: module.length.toInt()))),
        ),
        Container(
          height: 1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.grey.shade600, Colors.white],
            ),
          ),
        ),
      ]),
    );
  }

  String _toTimeSec(Duration value) {
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

///
///
