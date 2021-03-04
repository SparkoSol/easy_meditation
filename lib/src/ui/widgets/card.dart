import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget child;

  AppCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, BoxConstraints constraints) {
      late final BoxBorder? border;
      late final EdgeInsets edgeInsets;

      if (constraints.maxWidth > 600) {
        border = const Border(
          top: BorderSide(color: Color.fromRGBO(218, 220, 224, 1.0)),
          left: BorderSide(color: Color.fromRGBO(218, 220, 224, 1.0)),
          right: BorderSide(color: Color.fromRGBO(218, 220, 224, 1.0)),
          bottom: BorderSide(color: Color.fromRGBO(218, 220, 224, 1.0)),
        );
      } else {
        border = null;
      }

      if (constraints.maxWidth < 450) {
        edgeInsets = const EdgeInsets.fromLTRB(24, 24, 24, 36);
      } else {
        edgeInsets = const EdgeInsets.fromLTRB(40, 48, 40, 36);
      }

      return Container(
        width: 528,
        child: child,
        padding: edgeInsets,
        decoration: BoxDecoration(
          border: border,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      );
    });
  }
}
