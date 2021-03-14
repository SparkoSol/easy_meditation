import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDNavigationBar.dart';
import './XDMobile12columns63.dart';
import 'package:adobe_xd/page_link.dart';
import './XDGroup6799.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDMobile12columns64 extends StatelessWidget {
  XDMobile12columns64({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0, 2.0),
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
                        bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 139.0),
                        size: Size(414.0, 342.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Navigation Bar' (component)
                            XDNavigationBar(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 180.0),
            child: SizedBox(
              width: 376.0,
              height: 457.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 31.0),
                    size: Size(376.0, 456.8),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: PageLink(
                      links: [
                        PageLinkInfo(
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => XDMobile12columns63(),
                        ),
                      ],
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(324.0, 0.0, 51.0, 31.0),
                            size: Size(375.0, 31.0),
                            pinRight: true,
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Switch Light' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 51.0, 31.0),
                                  size: Size(51.0, 31.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child:
                                      // Adobe XD layer: 'Switch - Off' (group)
                                      Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds:
                                            Rect.fromLTWH(0.0, 0.0, 51.0, 31.0),
                                        size: Size(51.0, 31.0),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        pinBottom: true,
                                        child:
                                            // Adobe XD layer: 'Mask' (shape)
                                            SvgPicture.string(
                                          _svg_q211u8,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds:
                                            Rect.fromLTWH(0.0, 0.0, 51.0, 31.0),
                                        size: Size(51.0, 31.0),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        pinBottom: true,
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  2.0, 2.0, 27.0, 27.0),
                                              size: Size(51.0, 31.0),
                                              child:
                                                  // Adobe XD layer: 'Knob' (group)
                                                  Stack(
                                                children: <Widget>[
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 0.0, 27.0, 27.0),
                                                    size: Size(27.0, 27.0),
                                                    child:
                                                        // Adobe XD layer: 'knob' (shape)
                                                        Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        9999.0,
                                                                        9999.0)),
                                                        color: const Color(
                                                            0xffffffff),
                                                        border: Border.all(
                                                            width: 0.5,
                                                            color: const Color(
                                                                0x0a000000)),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: const Color(
                                                                0x0f000000),
                                                            offset:
                                                                Offset(0, 3),
                                                            blurRadius: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 0.0, 51.0, 31.0),
                                              size: Size(51.0, 31.0),
                                              child:
                                                  // Adobe XD layer: 'Mask' (shape)
                                                  SvgPicture.string(
                                                _svg_q211u8,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
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
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 3.0, 126.0, 21.0),
                            size: Size(375.0, 31.0),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Text(
                              'Turn on reminder',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: 16,
                                color: const Color(0xff3f414e),
                                fontWeight: FontWeight.w600,
                                height: 2.875,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(1.0, 28.0, 375.0, 428.8),
                    size: Size(376.0, 456.8),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 224.0, 371.5, 204.8),
                          size: Size(375.0, 428.8),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(2.3, 164.0, 369.3, 40.8),
                                size: Size(371.5, 204.8),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(328.5, 0.0, 40.8, 40.8),
                                      size: Size(369.3, 40.8),
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 40.8, 40.8),
                                            size: Size(40.8, 40.8),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x33a0a3b1)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                16.0, 10.0, 8.0, 19.0),
                                            size: Size(40.8, 40.8),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'S',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 14,
                                                color: const Color(0x33a0a3b1),
                                                fontWeight: FontWeight.w600,
                                                height: 1.4285714285714286,
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
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(273.8, 0.0, 40.8, 40.8),
                                      size: Size(369.3, 40.8),
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 40.8, 40.8),
                                            size: Size(40.8, 40.8),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x33a0a3b1)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                16.0, 10.0, 7.0, 19.0),
                                            size: Size(40.8, 40.8),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'F',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 14,
                                                color: const Color(0x33a0a3b1),
                                                fontWeight: FontWeight.w600,
                                                height: 1.4285714285714286,
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
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(219.0, 0.0, 40.8, 40.8),
                                      size: Size(369.3, 40.8),
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 40.8, 40.8),
                                            size: Size(40.8, 40.8),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x33a0a3b1)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                11.0, 10.0, 18.0, 19.0),
                                            size: Size(40.8, 40.8),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'TH',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 14,
                                                color: const Color(0x33a0a3b1),
                                                fontWeight: FontWeight.w600,
                                                height: 1.4285714285714286,
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
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(164.3, 0.0, 40.8, 40.8),
                                      size: Size(369.3, 40.8),
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 40.8, 40.8),
                                            size: Size(40.8, 40.8),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x33a0a3b1)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                14.0, 10.0, 14.0, 19.0),
                                            size: Size(40.8, 40.8),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'W',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 14,
                                                color: const Color(0x33a0a3b1),
                                                fontWeight: FontWeight.w600,
                                                height: 1.4285714285714286,
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
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(109.5, 0.0, 40.8, 40.8),
                                      size: Size(369.3, 40.8),
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 40.8, 40.8),
                                            size: Size(40.8, 40.8),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x33a0a3b1)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                16.0, 10.0, 8.0, 19.0),
                                            size: Size(40.8, 40.8),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'T',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 14,
                                                color: const Color(0x33a0a3b1),
                                                fontWeight: FontWeight.w600,
                                                height: 1.4285714285714286,
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
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(54.8, 0.0, 40.8, 40.8),
                                      size: Size(369.3, 40.8),
                                      pinLeft: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 40.8, 40.8),
                                            size: Size(40.8, 40.8),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x33a0a3b1)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                14.0, 10.0, 13.0, 19.0),
                                            size: Size(40.8, 40.8),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'M',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 14,
                                                color: const Color(0x33a0a3b1),
                                                fontWeight: FontWeight.w600,
                                                height: 1.4285714285714286,
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
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 40.8, 40.8),
                                      size: Size(369.3, 40.8),
                                      pinLeft: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 40.8, 40.8),
                                            size: Size(40.8, 40.8),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.elliptical(
                                                        9999.0, 9999.0)),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0x33a0a3b1)),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                11.0, 10.0, 17.0, 19.0),
                                            size: Size(40.8, 40.8),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'SU',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 14,
                                                color: const Color(0x33a0a3b1),
                                                fontWeight: FontWeight.w600,
                                                height: 1.4285714285714286,
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 323.0, 118.0),
                                size: Size(371.5, 204.8),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 77.0, 323.0, 41.0),
                                      size: Size(323.0, 118.0),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text.rich(
                                        TextSpan(
                                          style: TextStyle(
                                            fontFamily: 'SF Pro Text',
                                            fontSize: 16,
                                            color: const Color(0xffa1a4b2),
                                            height: 1.25,
                                          ),
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Everyday is best, but we recommend picking\n',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'at least five.',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 244.0, 64.0),
                                      size: Size(323.0, 118.0),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Text(
                                        'Which day would you\nlike to meditate?',
                                        style: TextStyle(
                                          fontFamily: 'SF Pro Display',
                                          fontSize: 24,
                                          color: const Color(0x333f414e),
                                          fontWeight: FontWeight.w700,
                                          height: 1.3333333333333333,
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 180.0),
                          size: Size(375.0, 428.8),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 128.0, 375.0, 52.0),
                                size: Size(375.0, 180.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 375.0, 52.0),
                                      size: Size(375.0, 52.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          color: const Color(0x33fefefe),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0x33858c94)),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          15.0, 15.3, 345.0, 21.0),
                                      size: Size(375.0, 52.0),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                324.0, 0.0, 21.0, 21.0),
                                            size: Size(345.0, 21.0),
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child:
                                                // Adobe XD layer: 'carbon_time' (group)
                                                Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 21.0, 21.0),
                                                  size: Size(21.0, 21.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: SvgPicture.string(
                                                    _svg_b41sk3,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      9.7, 3.7, 5.3, 11.3),
                                                  size: Size(21.0, 21.0),
                                                  fixedWidth: true,
                                                  fixedHeight: true,
                                                  child: SvgPicture.string(
                                                    _svg_po6gea,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 79.0, 19.0),
                                            size: Size(345.0, 21.0),
                                            pinLeft: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Text(
                                              'Choose time',
                                              style: TextStyle(
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 14,
                                                color: const Color(0x33a1a4b2),
                                                fontWeight: FontWeight.w600,
                                                height: 1.4285714285714286,
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
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 71.0, 307.0, 41.0),
                                size: Size(375.0, 180.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Any time you can choose but\nWe recommend first thing in the morning.',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    color: const Color(0x33a1a4b2),
                                    fontWeight: FontWeight.w600,
                                    height: 1.25,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 244.0, 64.0),
                                size: Size(375.0, 180.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'What time would you\nlike to meditate?',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 24,
                                    color: const Color(0x333f414e),
                                    fontWeight: FontWeight.w700,
                                    height: 1.3333333333333333,
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 872.0),
            child:
                // Adobe XD layer: 'Group 6799' (component)
                SizedBox(
              width: 414.0,
              height: 94.0,
              child: XDGroup6799(),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_q211u8 =
    '<svg viewBox="0.0 0.0 51.0 31.0" ><path  d="M 15.85700035095215 0.09215220063924789 C 17.59700012207031 -0.00784779991954565 19.33499908447266 0.000152199761942029 21.07500076293945 0.000152199761942029 C 21.08699989318848 0.000152199761942029 29.89200019836426 0.000152199761942029 29.89200019836426 0.000152199761942029 C 31.66600036621094 0.000152199761942029 33.40399932861328 -0.00784779991954565 35.14300155639648 0.09215220063924789 C 36.7239990234375 0.182152196764946 38.26399993896484 0.3741522133350372 39.79700088500977 0.8031522035598755 C 43.02399826049805 1.705152153968811 45.84199905395508 3.589152097702026 47.87900161743164 6.260152339935303 C 49.90399932861328 8.914152145385742 51 12.16315174102783 51 15.49915218353271 C 51 18.83915138244629 49.90399932861328 22.08615303039551 47.87900161743164 24.74015235900879 C 45.84199905395508 27.41015243530273 43.02399826049805 29.29515266418457 39.79700088500977 30.19715309143066 C 38.26399993896484 30.62615203857422 36.7239990234375 30.81715202331543 35.14300155639648 30.90815162658691 C 33.40399932861328 31.00815200805664 31.66600036621094 30.99915313720703 29.92600059509277 30.99915313720703 C 29.91399955749512 30.99915313720703 21.10700035095215 31.00015258789063 21.10700035095215 31.00015258789063 C 19.33499908447266 30.99915313720703 17.59700012207031 31.00815200805664 15.85700035095215 30.90815162658691 C 14.27700042724609 30.81715202331543 12.73700046539307 30.62615203857422 11.20400047302246 30.19715309143066 C 7.97700023651123 29.29515266418457 5.158999919891357 27.41015243530273 3.121999979019165 24.74015235900879 C 1.097000002861023 22.08615303039551 0 18.83915138244629 0 15.50015258789063 C 0 12.16315174102783 1.097000002861023 8.914152145385742 3.121999979019165 6.260152339935303 C 5.158999919891357 3.589152097702026 7.97700023651123 1.705152153968811 11.20400047302246 0.8031522035598755 C 12.73700046539307 0.3741522133350372 14.27700042724609 0.182152196764946 15.85700035095215 0.09215220063924789 Z" fill="#787880" fill-opacity="0.16" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_b41sk3 =
    '<svg viewBox="1.7 2.0 21.0 21.0" ><path  d="M 12.22410011291504 23.00830078125 C 10.14739990234375 23.00830078125 8.117349624633789 22.39249992370605 6.390639781951904 21.23870086669922 C 4.663919925689697 20.08499908447266 3.31810998916626 18.44510078430176 2.523390054702759 16.5265007019043 C 1.728670001029968 14.60789966583252 1.520740032196045 12.49670028686523 1.925879955291748 10.45989990234375 C 2.331029891967773 8.423060417175293 3.331049919128418 6.552140235900879 4.799499988555908 5.083680152893066 C 6.267960071563721 3.615230083465576 8.138879776000977 2.615200042724609 10.17570018768311 2.210059881210327 C 12.21249961853027 1.804919958114624 14.32369995117188 2.012850046157837 16.24230003356934 2.807569980621338 C 18.1609001159668 3.602289915084839 19.80080032348633 4.948100090026855 20.95459938049316 6.674819946289063 C 22.10829925537109 8.401530265808105 22.72410011291504 10.43159961700439 22.72410011291504 12.50829982757568 C 22.72410011291504 15.29310035705566 21.61790084838867 17.96380043029785 19.64870071411133 19.93289947509766 C 17.67959976196289 21.902099609375 15.0088996887207 23.00830078125 12.22410011291504 23.00830078125 Z M 12.22410011291504 3.508310079574585 C 10.44410037994385 3.508310079574585 8.704039573669434 4.036149978637695 7.223989963531494 5.02508020401001 C 5.743949890136719 6.014009952545166 4.590400218963623 7.419620037078857 3.909209966659546 9.064149856567383 C 3.228019952774048 10.70870018005371 3.049789905548096 12.51830005645752 3.397059917449951 14.26410007476807 C 3.744329929351807 16.0098991394043 4.601490020751953 17.61359977722168 5.860159873962402 18.87229919433594 C 7.118840217590332 20.13089942932129 8.722479820251465 20.98810005187988 10.46829986572266 21.33539962768555 C 12.2140998840332 21.6826000213623 14.02369976043701 21.5044002532959 15.66829967498779 20.82320022583008 C 17.31279945373535 20.14200019836426 18.71839904785156 18.98850059509277 19.70739936828613 17.50839996337891 C 20.6963005065918 16.02840042114258 21.22410011291504 14.28829956054688 21.22410011291504 12.50829982757568 C 21.22410011291504 10.12139987945557 20.27589988708496 7.832170009613037 18.58810043334961 6.144340038299561 C 16.90029907226563 4.456520080566406 14.61110019683838 3.508310079574585 12.22410011291504 3.508310079574585 Z" fill="#092c47" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_po6gea =
    '<svg viewBox="11.5 5.8 5.3 11.3" ><path  d="M 15.66660022735596 17.00830078125 L 11.47410011291504 12.81579971313477 L 11.47410011291504 5.758299827575684 L 12.97410011291504 5.758299827575684 L 12.97410011291504 12.19330024719238 L 16.72410011291504 15.9507999420166 L 15.66660022735596 17.00830078125 Z" fill="#092c47" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
