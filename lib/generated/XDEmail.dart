import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDEmail extends StatelessWidget {
  XDEmail({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 55.0, 327.0, 1.0),
          size: Size(327.0, 55.0),
          pinLeft: true,
          pinRight: true,
          pinBottom: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Line' (shape)
              SvgPicture.string(
            _svg_g0fc3q,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(3.5, 25.0, 124.0, 19.0),
          size: Size(327.0, 55.0),
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Helloistiak@gmail.c…' (text)
              Text(
            'example@gmail.com',
            style: TextStyle(
              fontFamily: 'SF Pro Text',
              fontSize: 14,
              color: const Color(0xff404040),
              letterSpacing: -0.3376470069885254,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(-0.5, -2.0, 36.0, 21.0),
          size: Size(327.0, 55.0),
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Email' (text)
              Text(
            'Email',
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: 16,
              color: const Color(0xffa6a6a6),
              letterSpacing: -0.3858822937011719,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

const String _svg_g0fc3q =
    '<svg viewBox="0.0 55.0 327.0 1.0" ><path transform="translate(-0.5, 53.5)" d="M 0.5 1.5 L 327.5 1.5" fill="none" stroke="#dadada" stroke-width="1" stroke-miterlimit="10" stroke-linecap="square" /></svg>';
