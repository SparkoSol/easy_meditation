import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDActionSheetsCancel extends StatelessWidget {
  XDActionSheetsCancel({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 359.0, 56.0),
          size: Size(359.0, 56.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child:
              // Adobe XD layer: 'Button' (shape)
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: const Color(0xffde9600),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 16.0, 359.0, 24.0),
          size: Size(359.0, 56.0),
          pinLeft: true,
          pinRight: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Label' (text)
              SingleChildScrollView(
                  child: Text(
            'Cancel',
            style: TextStyle(
              fontFamily: 'SF Pro Text',
              fontSize: 20,
              color: const Color(0xfff2f2f2),
              letterSpacing: -0.48,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          )),
        ),
      ],
    );
  }
}
