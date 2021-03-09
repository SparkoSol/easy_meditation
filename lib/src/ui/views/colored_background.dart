import 'package:flutter/material.dart';

class ColoredBackground extends Container {
  ColoredBackground({Widget child}): super(
    child: child,
    constraints: BoxConstraints.expand(),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        end: Alignment.topRight,
        begin: Alignment.bottomLeft,
        colors: [Color(0xFFE2E7FC), Color(0x22E2E7FC)],
      )
    )
  );
}
