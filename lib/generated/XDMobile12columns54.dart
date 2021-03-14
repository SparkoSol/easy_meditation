import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDComponent61.dart';
import './XDGroup7.dart';
import './XDComponent2.dart';

class XDMobile12columns54 extends StatelessWidget {
  XDMobile12columns54({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child:
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
          ),
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child:
                // Adobe XD layer: 'Header / Default' (group)
                SizedBox(
              width: 414.0,
              height: 342.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 342.0),
                    size: Size(414.0, 342.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Header' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 342.0),
                          size: Size(414.0, 342.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'bg' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 341.6),
                                size: Size(414.0, 342.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Rectangle 4' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffde9600),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 342.0),
                                size: Size(414.0, 342.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Rectangle 5' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff3f5fd),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.0, 69.0, 366.9, 57.0),
                          size: Size(414.0, 342.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Profile' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 366.9, 57.0),
                                size: Size(366.9, 57.0),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Frame 6813' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(318.0, 5.0, 48.9, 49.5),
                                      size: Size(366.9, 57.0),
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child:
                                          // Adobe XD layer: 'Profile image' (shape)
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: const AssetImage(''),
                                            fit: BoxFit.fill,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.8),
                                                BlendMode.dstIn),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 109.0, 57.0),
                                      size: Size(366.9, 57.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 36.0, 101.0, 21.0),
                                            size: Size(109.0, 57.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Kristin Watson',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Text',
                                                fontSize: 16,
                                                color: const Color(0x8f353961),
                                                height: 2.875,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 9.0, 109.0, 27.0),
                                            size: Size(109.0, 57.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'My Account',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 20,
                                                color: const Color(0xff353961),
                                                fontWeight: FontWeight.w600,
                                                height: 2.3,
                                              ),
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToFirstAscent:
                                                          false),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
            offset: Offset(0.0, 580.0),
            child: SizedBox(
              width: 414.0,
              height: 383.0,
              child: XDComponent61(),
            ),
          ),
          Transform.translate(
            offset: Offset(-6.8, 167.0),
            child: SizedBox(
              width: 429.0,
              height: 594.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 428.8, 184.5),
                    size: Size(428.8, 594.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 428.8, 184.5),
                          size: Size(428.8, 184.5),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 428.8, 184.5),
                                size: Size(428.8, 184.5),
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Group 7' (component)
                                    XDGroup7(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.8, 179.0, 378.0, 415.0),
                    size: Size(428.8, 594.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 32.0, 378.0, 383.0),
                          size: Size(378.0, 415.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 327.5, 377.0, 55.5),
                                size: Size(378.0, 383.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 262.0, 378.0, 55.5),
                                size: Size(378.0, 383.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 196.5, 377.0, 55.5),
                                size: Size(378.0, 383.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 131.0, 378.0, 55.5),
                                size: Size(378.0, 383.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 65.5, 377.0, 55.5),
                                size: Size(378.0, 383.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 377.0, 55.5),
                                size: Size(378.0, 383.0),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(14.0, 0.0, 61.0, 27.0),
                          size: Size(378.0, 415.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Others',
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
            offset: Offset(0.0, -30.0),
            child:
                // Adobe XD layer: 'Bg' (shape)
                Container(
              width: 414.0,
              height: 911.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.51), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-15.0, 100.0),
            child: SizedBox(
              width: 440.0,
              height: 770.0,
              child: XDComponent61(),
            ),
          ),
        ],
      ),
    );
  }
}
