import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/base/locale.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/models/module.dart';
import 'package:easy_meditation/src/ui/pages/audio_player_page.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class ModuleWidget extends StatefulWidget {
  final bool playing;
  final Module module;
  final bool openPlayer;
  final VoidCallback onPressed;
  final VoidCallback onPlayRequest;
  final VoidCallback onPlayerReturn;

  ModuleWidget(
    this.module, {
    this.onPressed,
    this.playing = false,
    this.openPlayer = true,
    this.onPlayRequest,
    this.onPlayerReturn,
  });

  @override
  _ModuleWidgetState createState() => _ModuleWidgetState();
}

class _ModuleWidgetState extends State<ModuleWidget> {
  @override
  Widget build(BuildContext context) {
    Widget icon;

    if (widget.playing) {
      icon = Transform.rotate(
        angle: -1.5708,
        child: Icon(Icons.sort, color: AppTheme.primaryColor),
      );
    } else {
      icon = Icon(Icons.play_arrow, color: AppTheme.primaryColor);
    }

    final modules = Module.getCourses(AppLocalizations.of(context));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(children: [
        ListTile(
          onTap: () async {
            await widget.onPressed?.call();
            if (widget.openPlayer) {
              List<Module> allCourses =
                  AppData.modules(widget.module.courseNumber);

              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AudioPlayerPage(
                    widget.module,
                    allCourses,
                    widget.module.courseNumber,
                    allCourses.indexOf(widget.module)),
              ));

              widget.onPlayerReturn?.call();
            }
          },
          leading: OutlinedButton(
            child: icon,
            onPressed: widget.onPlayRequest,
            style: OutlinedButton.styleFrom(
              minimumSize: Size(47, 47),
              padding: EdgeInsets.zero,
              primary: AppTheme.primaryColor,
              side: BorderSide(color: AppTheme.primaryColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            // width: 47,
            // height: 47,
            // decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   border: Border.all(color: AppTheme.primaryColor),
            // ),
          ),
          title: Text(widget.module.name),
          subtitle: Text(modules[widget.module.courseNumber]),
          trailing:
              Text(_toTimeSec(Duration(seconds: widget.module.length.toInt()))),
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
