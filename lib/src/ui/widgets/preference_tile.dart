import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreferenceTile extends TextButton {
  PreferenceTile({
    String title,
    VoidCallback onPressed,
    TextStyle style,
  }) : super(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            primary: Colors.grey.shade700,
            backgroundColor: Colors.white,
            padding: const EdgeInsets.fromLTRB(13, 14, 7.5, 14),
          ),
          child: Row(
            children: [
              Text(
                title,
                style: style ??
                    TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              Spacer(),
              Icon(CupertinoIcons.chevron_right, size: 22)
            ],
          ),
        );
}
