import 'package:flutter/material.dart';
import './XDComponent61.dart';
import 'package:adobe_xd/pinned.dart';
import './XDGroup6799.dart';
import './XDNavigationBar.dart';

class XDMobile12columns30 extends StatelessWidget {
  XDMobile12columns30({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Rectangle 5' (shape)
          Container(
            width: 414.0,
            height: 890.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.96, -1.0),
                end: Alignment(-0.95, 0.99),
                colors: [const Color(0x00e2e7fc), const Color(0xffe6ebfc)],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 600.0),
            child: SizedBox(
              width: 414.0,
              height: 383.0,
              child: XDComponent61(),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 169.0),
            child: SizedBox(
              width: 365.0,
              height: 674.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 365.0, 674.0),
                    size: Size(365.0, 674.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 653.0, 77.0, 21.0),
                          size: Size(365.0, 674.0),
                          child: Text(
                            'Version 1.0',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 16,
                              color: const Color(0xff353961),
                              fontWeight: FontWeight.w600,
                              height: 1.75,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 468.0, 338.0, 105.0),
                          size: Size(365.0, 674.0),
                          child: Text(
                            'If you believe your life is perfect. If you have \nnothing to be anxious about – perhaps the odd \ntrauma now and then, but nothing that cannot \neasily be dealt with.',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 16,
                              color: const Color(0xff323130),
                              height: 1.75,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 157.0, 365.0, 301.0),
                          size: Size(365.0, 674.0),
                          child: Text(
                            'At first glance, some of these techniques may look \nlike over-simplifications, while others don’t even \nlook spiritual, let alone Buddhist. Yet, they are \nbased on some of the most important, fundamental\nBuddhist principles – the Buddhist view, practice \nand action. If you can apply a little discipline and \ncomplete at least part of the course, you will be \nable to put some of these principles into practice. \nThis is why you are strongly encouraged to try \nthem out, however ridiculous or illogical they may \nfeel.',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 16,
                              color: const Color(0xff323130),
                              height: 1.75,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 45.0, 324.0, 103.0),
                          size: Size(365.0, 674.0),
                          child: Text(
                            'This series of techniques has been put together \nwith busy, lazy people in mind, who may even be \nhaunted by the wish to do the practice. It may also \nbe useful to those who are new to Buddhist practice.',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 14,
                              color: const Color(0xff323130),
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 166.0, 27.0),
                          size: Size(365.0, 674.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'About Application',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 20,
                              color: const Color(0xff3f414e),
                              fontWeight: FontWeight.w600,
                              height: 2.3,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 866.0),
            child:
                // Adobe XD layer: 'Group 6799' (component)
                SizedBox(
              width: 414.0,
              height: 94.0,
              child: XDGroup6799(),
            ),
          ),
          // Adobe XD layer: 'Navigation Bar' (component)
          SizedBox(
            width: 414.0,
            height: 139.0,
            child: XDNavigationBar(),
          ),
        ],
      ),
    );
  }
}
