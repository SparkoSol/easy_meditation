import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/pages/audio_player_page.dart';
import 'package:flutter/material.dart';

class ModuleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(children: [
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AudioPlayerPage(),
            ));
          },
          leading: Container(
            width: 47,
            height: 47,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppTheme.primaryColor),
            ),
            child: Icon(Icons.play_arrow, color: AppTheme.primaryColor),
          ),
          title: Text('Module 1'),
          subtitle: Text('Advanced Course'),
          trailing: Text('10 min'),
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
}

///
///
