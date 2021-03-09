import 'package:easy_meditation/src/base/assets.dart';
import 'package:flutter/material.dart';

class ImagedView extends Container {
  ImagedView({Widget child})
      : super(
          child: child,
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Assets.bgImage),
            ),
          ),
        );
}
