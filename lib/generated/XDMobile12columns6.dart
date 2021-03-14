import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDComponent51.dart';
import './XDMobile12columns21.dart';
import 'package:adobe_xd/page_link.dart';
import './XDMobile12columns14.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDMobile12columns6 extends StatelessWidget {
  XDMobile12columns6({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Header / Default' (group)
          SizedBox(
            width: 414.0,
            height: 890.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 890.2),
                  size: Size(414.0, 890.2),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'Header' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 890.2),
                        size: Size(414.0, 890.2),
                        pinLeft: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'bg' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 890.2),
                              size: Size(414.0, 890.2),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'Rectangle 4' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 890.0),
                              size: Size(414.0, 890.2),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'Rectangle 5' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(0.96, -1.0),
                                    end: Alignment(-0.95, 0.99),
                                    colors: [
                                      const Color(0x00e2e7fc),
                                      const Color(0x0be2e7fc),
                                      const Color(0x84e5eafc),
                                      const Color(0x99e6ebfc)
                                    ],
                                    stops: [0.0, 0.0, 0.774, 1.0],
                                  ),
                                ),
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
          Transform.translate(
            offset: Offset(252.0, -19.0),
            child:
                // Adobe XD layer: 'blob' (group)
                SizedBox(
              width: 276.0,
              height: 1031.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 272.1, 481.7),
                    size: Size(276.2, 1030.8),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ewx43g,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(37.8, 792.4, 209.9, 209.9),
                    size: Size(276.2, 1030.8),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Transform.rotate(
                      angle: 1.2382,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0x66ffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(40.0, 380.0),
            child: SizedBox(
              width: 343.0,
              height: 335.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 314.0, 343.0, 21.0),
                    size: Size(343.0, 335.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(305.0, 0.0, 38.0, 21.0),
                          size: Size(343.0, 21.0),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            '10:00',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 16,
                              color: const Color(0xff535461),
                              height: 2.875,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 21.0),
                          size: Size(343.0, 21.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            '01:50',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 16,
                              color: const Color(0xff535461),
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.0, 294.0, 333.4, 17.0),
                    size: Size(343.0, 335.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Time' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 8.5, 333.4, 1.0),
                          size: Size(333.4, 17.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_fsfxyl,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 8.5, 48.7, 1.0),
                          size: Size(333.4, 17.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_gz79p0,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(44.2, 0.0, 17.0, 17.0),
                          size: Size(333.4, 17.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0x663f414e),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(46.2, 2.0, 13.0, 13.0),
                          size: Size(333.4, 17.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff3f414e),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(33.0, 140.0, 268.7, 109.0),
                    size: Size(343.0, 335.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(239.9, 38.0, 28.8, 33.8),
                          size: Size(268.7, 109.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Group 6836' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 28.8, 33.8),
                                size: Size(28.8, 33.8),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_dag3h4,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(7.9, 16.5, 10.3, 8.1),
                                size: Size(28.8, 33.8),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_ryokfj,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(78.8, 0.0, 109.0, 109.0),
                          size: Size(268.7, 109.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child:
                              // Adobe XD layer: 'Group 6834' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 109.0, 109.0),
                                size: Size(109.0, 109.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 33.6, 54.5, 75.4),
                                      size: Size(109.0, 109.0),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_hgr7i1,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(54.5, 54.5, 54.5, 54.5),
                                      size: Size(109.0, 109.0),
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_5v40xv,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(54.5, 0.0, 54.5, 54.5),
                                      size: Size(109.0, 109.0),
                                      pinRight: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_hdd1uc,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(4.2, 0.0, 50.4, 54.5),
                                      size: Size(109.0, 109.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_m3tvqp,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(10.6, 37.7, 44.0, 60.8),
                                size: Size(109.0, 109.0),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_lorb9b,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(54.5, 54.5, 44.0, 43.9),
                                size: Size(109.0, 109.0),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_qx8w84,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(54.5, 10.6, 44.0, 44.0),
                                size: Size(109.0, 109.0),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_d1naef,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(13.9, 10.6, 40.6, 44.0),
                                size: Size(109.0, 109.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_fflkjv,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(46.7, 40.4, 15.6, 28.1),
                                size: Size(109.0, 109.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_n2pvxy,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 38.0, 28.8, 33.8),
                          size: Size(268.7, 109.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Group 6835' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 28.8, 33.8),
                                size: Size(28.8, 33.8),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_iihabp,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(8.4, 16.0, 10.3, 8.1),
                                size: Size(28.8, 33.8),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_2qhwy4,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(110.0, 0.0, 125.0, 64.0),
                    size: Size(343.0, 335.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(5.0, 43.0, 99.0, 21.0),
                          size: Size(125.0, 64.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Beginner level',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 16,
                              color: const Color(0xff535461),
                              height: 2.875,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 125.0, 37.0),
                          size: Size(125.0, 64.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Text(
                            'Module 1',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 28,
                              color: const Color(0xff3f414e),
                              fontWeight: FontWeight.w700,
                              height: 1.6428571428571428,
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
            offset: Offset(0.0, 720.5),
            child: SizedBox(
              width: 418.0,
              height: 390.0,
              child: XDComponent51(),
            ),
          ),
          Container(),
          Transform.translate(
            offset: Offset(333.0, 47.0),
            child:
                // Adobe XD layer: 'Profile' (group)
                SizedBox(
              width: 58.0,
              height: 35.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 58.0, 35.0),
                    size: Size(58.0, 35.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Frame 6813' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 58.0, 35.0),
                          size: Size(58.0, 35.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 58.0, 35.0),
                                size: Size(58.0, 35.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Back' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 35.0, 35.0),
                                      size: Size(58.0, 35.0),
                                      pinLeft: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: PageLink(
                                        links: [
                                          PageLinkInfo(
                                            ease: Curves.easeIn,
                                            duration: 0.3,
                                            pageBuilder: () =>
                                                XDMobile12columns21(),
                                          ),
                                        ],
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 0.0, 35.0, 35.0),
                                              size: Size(35.0, 35.0),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromSize(
                                                    bounds: Rect.fromLTWH(
                                                        0.0, 0.0, 35.0, 35.0),
                                                    size: Size(35.0, 35.0),
                                                    pinLeft: true,
                                                    pinRight: true,
                                                    pinTop: true,
                                                    pinBottom: true,
                                                    child:
                                                        // Adobe XD layer: 'Fav' (group)
                                                        Stack(
                                                      children: <Widget>[
                                                        Pinned.fromSize(
                                                          bounds: Rect.fromLTWH(
                                                              0.0,
                                                              0.0,
                                                              35.0,
                                                              35.0),
                                                          size:
                                                              Size(35.0, 35.0),
                                                          pinLeft: true,
                                                          pinRight: true,
                                                          pinTop: true,
                                                          pinBottom: true,
                                                          child: Stack(
                                                            children: <Widget>[
                                                              Pinned.fromSize(
                                                                bounds: Rect
                                                                    .fromLTWH(
                                                                        0.0,
                                                                        0.0,
                                                                        35.0,
                                                                        35.0),
                                                                size: Size(
                                                                    35.0, 35.0),
                                                                pinLeft: true,
                                                                pinRight: true,
                                                                pinTop: true,
                                                                pinBottom: true,
                                                                child: Stack(
                                                                  children: <
                                                                      Widget>[
                                                                    Pinned
                                                                        .fromSize(
                                                                      bounds: Rect.fromLTWH(
                                                                          0.0,
                                                                          0.0,
                                                                          35.0,
                                                                          35.0),
                                                                      size: Size(
                                                                          35.0,
                                                                          35.0),
                                                                      pinLeft:
                                                                          true,
                                                                      pinRight:
                                                                          true,
                                                                      pinTop:
                                                                          true,
                                                                      pinBottom:
                                                                          true,
                                                                      child: Transform
                                                                          .rotate(
                                                                        angle:
                                                                            3.1416,
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(17.5),
                                                                            color:
                                                                                const Color(0x3cde9600),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Pinned.fromSize(
                                                          bounds: Rect.fromLTWH(
                                                              11.7,
                                                              12.4,
                                                              11.6,
                                                              10.3),
                                                          size:
                                                              Size(35.0, 35.0),
                                                          fixedWidth: true,
                                                          fixedHeight: true,
                                                          child:
                                                              SvgPicture.string(
                                                            _svg_169onn,
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
                                                        0.0, 0.0, 35.0, 35.0),
                                                    size: Size(35.0, 35.0),
                                                    pinLeft: true,
                                                    pinRight: true,
                                                    pinTop: true,
                                                    pinBottom: true,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(27.0),
                                                        border: Border.all(
                                                            width: 1.0,
                                                            color: Colors
                                                                .transparent),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(55.0, 10.0, 3.0, 15.0),
                                      size: Size(58.0, 35.0),
                                      pinRight: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'option' (group)
                                          PageLink(
                                        links: [
                                          PageLinkInfo(
                                            ease: Curves.easeOut,
                                            duration: 0.3,
                                            pageBuilder: () =>
                                                XDMobile12columns14(),
                                          ),
                                        ],
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 0.0, 3.0, 3.0),
                                              size: Size(3.0, 15.0),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_4pwzdo,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 6.0, 3.0, 3.0),
                                              size: Size(3.0, 15.0),
                                              pinLeft: true,
                                              pinRight: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_ebvdbk,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 12.0, 3.0, 3.0),
                                              size: Size(3.0, 15.0),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinBottom: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_3tg6q4,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ],
                                        ),
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
        ],
      ),
    );
  }
}

const String _svg_ewx43g =
    '<svg viewBox="0.9 0.0 272.1 481.7" ><path  d="M 189.1000061035156 104.9499969482422 C 187.3699951171875 98.72000122070313 182.5800018310547 74.88999938964844 178.7799987792969 45.58000183105469 C 175.6600036621094 21.42000007629395 194.4199981689453 0 218.7700042724609 0 L 232.6699981689453 0 C 255.0099945068359 0 273.1000061035156 18.15999984741211 273 40.5 C 272.5 154.1799926757813 269.239990234375 327.0899963378906 258.8099975585938 341.739990234375 C 250.0899963378906 353.9800109863281 240.4600067138672 379.010009765625 233.9199981689453 398.4400024414063 C 226.1399993896484 421.5299987792969 212.5399932861328 442.2900085449219 194.1600036621094 458.2799987792969 C 193.6100006103516 458.760009765625 193.0599975585938 459.2300109863281 192.5200042724609 459.6799926757813 C 180.8800048828125 469.4800109863281 166.7599945068359 475.8999938964844 151.7700042724609 478.5 C 31.70989990234375 499.2999877929688 1.109949946403503 414.3599853515625 1.009950041770935 366.1300048828125 C 1.009950041770935 365.2699890136719 0.9799450039863586 364.4100036621094 0.9299449920654297 363.5499877929688 C -0.4800550043582916 335.9299926757813 18.92000007629395 276.1199951171875 108.5500030517578 247.5200042724609 C 199.6100006103516 218.4799957275391 200.1999969482422 140.3699951171875 189.1000061035156 104.9499969482422 Z" fill="#f2ede4" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fsfxyl =
    '<svg viewBox="2.3 9.0 333.4 1.0" ><path  d="M 335.7210083007813 9.023469924926758 L 2.278810024261475 9.023440361022949" fill="none" fill-opacity="0.3" stroke="#535461" stroke-width="3" stroke-opacity="0.3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_gz79p0 =
    '<svg viewBox="2.3 9.0 48.7 1.0" ><path  d="M 51.02349853515625 9.023929595947266 L 2.278810024261475 9.023969650268555" fill="none" stroke="#3f414e" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_dag3h4 =
    '<svg viewBox="5.4 1.5 28.8 33.8" ><path  d="M 15.12030029296875 1.492130041122437 L 10.79389953613281 8.985659599304199 L 18.28739929199219 13.3120002746582 M 5.535270214080811 18.55540084838867 C 5.017899990081787 21.80039978027344 5.624289989471436 25.12490081787109 7.254059791564941 27.97830009460449 C 8.883819580078125 30.83180046081543 11.43920040130615 33.04299926757813 14.49720001220703 34.24599838256836 C 17.55509948730469 35.44910049438477 20.93219947814941 35.57170104980469 24.06929969787598 34.59349822998047 C 27.20639991760254 33.61539840698242 29.9153995513916 31.59519958496094 31.74780082702637 28.86750030517578 C 33.58010101318359 26.13969993591309 34.42599868774414 22.86800003051758 34.14530181884766 19.59390068054199 C 33.86449813842773 16.31990051269531 32.47409820556641 13.23989963531494 30.20409965515137 10.86390018463135 C 27.9340991973877 8.487850189208984 24.92079925537109 6.958330154418945 21.66300010681152 6.528520107269287 C 18.40509986877441 6.098710060119629 15.09819984436035 6.794400215148926 12.28969955444336 8.500410079956055" fill="none" fill-opacity="0.8" stroke="#263238" stroke-width="2" stroke-opacity="0.8" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ryokfj =
    '<svg viewBox="13.3 18.0 10.3 8.1" ><path  d="M 16.13179969787598 26 L 16.13179969787598 17.99600028991699 L 15.25580024719238 17.99600028991699 L 13.25179958343506 20.05999946594238 L 13.85179996490479 20.67200088500977 L 15.1358003616333 19.30400085449219 L 15.1358003616333 26 L 16.13179969787598 26 Z M 20.67819976806641 26.14399909973145 C 22.28619956970215 26.14399909973145 23.53420066833496 25.12400054931641 23.53420066833496 23.50399971008301 C 23.53420066833496 21.84799957275391 22.32220077514648 20.94799995422363 20.97820091247559 20.94799995422363 C 20.1742000579834 20.94799995422363 19.50219917297363 21.28400039672852 19.10619926452637 21.66799926757813 L 19.10619926452637 18.88400077819824 L 23.00620079040527 18.88400077819824 L 23.00620079040527 17.99600028991699 L 18.11020088195801 17.99600028991699 L 18.11020088195801 22.30400085449219 L 18.84219932556152 22.55599975585938 C 19.38220024108887 22.04000091552734 19.99419975280762 21.8120002746582 20.69020080566406 21.8120002746582 C 21.77020072937012 21.8120002746582 22.52619934082031 22.48399925231934 22.52619934082031 23.54000091552734 C 22.52619934082031 24.51199913024902 21.77020072937012 25.25600051879883 20.67819976806641 25.25600051879883 C 19.70619964599609 25.25600051879883 18.99819946289063 24.87199974060059 18.47019958496094 24.1879997253418 L 17.85820007324219 24.86000061035156 C 18.45820045471191 25.65200042724609 19.33419990539551 26.14399909973145 20.67819976806641 26.14399909973145 Z" fill="#263238" fill-opacity="0.8" stroke="none" stroke-width="1" stroke-opacity="0.8" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hgr7i1 =
    '<svg viewBox="0.5 34.1 54.5 75.4" ><path  d="M 55 55.01229858398438 L 55 109.5240020751953 C 24.89789962768555 109.5240020751953 0.4763180017471313 85.11440277099609 0.4763180017471313 55.01229858398438 C 0.4763180017471313 47.59529876708984 1.952280044555664 40.52560043334961 4.643740177154541 34.08840179443359 L 4.643740177154541 55.01229858398438 L 55 55.01229858398438 Z" fill="#263238" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5v40xv =
    '<svg viewBox="55.0 55.0 54.5 54.5" ><path  d="M 109.5240020751953 55.01269912719727 C 109.5240020751953 85.11479949951172 85.11460113525391 109.5240020751953 55 109.5240020751953 L 55 55.01269912719727 L 109.5240020751953 55.01269912719727 Z" fill="#263238" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hdd1uc =
    '<svg viewBox="55.0 0.5 54.5 54.5" ><path  d="M 109.5240020751953 55.01250076293945 L 55 55.01250076293945 L 55 0.4887700080871582 C 85.11460113525391 0.4887700080871582 109.5240020751953 24.89789962768555 109.5240020751953 55.01250076293945 Z" fill="#263238" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_m3tvqp =
    '<svg viewBox="4.6 0.5 50.4 54.5" ><path  d="M 55.00030136108398 0.4887700080871582 L 55.00030136108398 55.01250076293945 L 4.644040107727051 55.01250076293945 L 4.644040107727051 34.08860015869141 C 12.84239959716797 14.35540008544922 32.31520080566406 0.4887700080871582 55.00030136108398 0.4887700080871582 Z" fill="#263238" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lorb9b =
    '<svg viewBox="11.0 38.1 44.0 60.8" ><path  d="M 55.00030136108398 55.01110076904297 L 55.00030136108398 98.96109771728516 C 30.73030090332031 98.96109771728516 11.0403003692627 79.28109741210938 11.0403003692627 55.01110076904297 C 11.0403003692627 49.03110122680664 12.230299949646 43.33110046386719 14.40030002593994 38.1411018371582 L 14.40030002593994 55.01110076904297 L 55.00030136108398 55.01110076904297 Z" fill="#252223" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qx8w84 =
    '<svg viewBox="55.0 55.0 44.0 43.9" ><path  d="M 98.96019744873047 55.01119995117188 C 98.96019744873047 79.28119659423828 79.28019714355469 98.96119689941406 55.00019836425781 98.96119689941406 L 55.00019836425781 55.01119995117188 L 98.96019744873047 55.01119995117188 Z" fill="#252223" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d1naef =
    '<svg viewBox="55.0 11.1 44.0 44.0" ><path  d="M 98.96019744873047 55.01129913330078 L 55.00019836425781 55.01129913330078 L 55.00019836425781 11.05130004882813 C 79.28019714355469 11.05130004882813 98.96019744873047 30.73130035400391 98.96019744873047 55.01129913330078 Z" fill="#252223" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fflkjv =
    '<svg viewBox="14.4 11.1 40.6 44.0" ><path  d="M 55.00040054321289 11.05130004882813 L 55.00040054321289 55.01129913330078 L 14.40040016174316 55.01129913330078 L 14.40040016174316 38.14130020141602 C 21.01040077209473 22.23130035400391 36.71039962768555 11.05130004882813 55.00040054321289 11.05130004882813 Z" fill="#252223" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n2pvxy =
    '<svg viewBox="47.2 40.9 15.6 28.1" ><path  d="M 48.75 40.9375 C 49.16439819335938 40.9375 49.56179809570313 41.10210037231445 49.85490036010742 41.39509963989258 C 50.14789962768555 41.68820190429688 50.3125 42.08560180664063 50.3125 42.5 L 50.3125 67.5 C 50.3125 67.91439819335938 50.14789962768555 68.31179809570313 49.85490036010742 68.60489654541016 C 49.56179809570313 68.89790344238281 49.16439819335938 69.0625 48.75 69.0625 C 48.33560180664063 69.0625 47.93820190429688 68.89790344238281 47.64509963989258 68.60489654541016 C 47.35210037231445 68.31179809570313 47.1875 67.91439819335938 47.1875 67.5 L 47.1875 42.5 C 47.1875 42.08560180664063 47.35210037231445 41.68820190429688 47.64509963989258 41.39509963989258 C 47.93820190429688 41.10210037231445 48.33560180664063 40.9375 48.75 40.9375 Z M 61.25 40.9375 C 61.66439819335938 40.9375 62.06179809570313 41.10210037231445 62.35490036010742 41.39509963989258 C 62.64789962768555 41.68820190429688 62.8125 42.08560180664063 62.8125 42.5 L 62.8125 67.5 C 62.8125 67.91439819335938 62.64789962768555 68.31179809570313 62.35490036010742 68.60489654541016 C 62.06179809570313 68.89790344238281 61.66439819335938 69.0625 61.25 69.0625 C 60.83560180664063 69.0625 60.43820190429688 68.89790344238281 60.14509963989258 68.60489654541016 C 59.85210037231445 68.31179809570313 59.6875 67.91439819335938 59.6875 67.5 L 59.6875 42.5 C 59.6875 42.08560180664063 59.85210037231445 41.68820190429688 60.14509963989258 41.39509963989258 C 60.43820190429688 41.10210037231445 60.83560180664063 40.9375 61.25 40.9375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iihabp =
    '<svg viewBox="5.8 1.5 28.8 33.8" ><path  d="M 24.8799991607666 1.492130041122437 L 29.20630073547363 8.985659599304199 L 21.71279907226563 13.3120002746582 M 34.46500015258789 18.55540084838867 C 34.9822998046875 21.80039978027344 34.37599945068359 25.12490081787109 32.74620056152344 27.97830009460449 C 31.11639976501465 30.83180046081543 28.56100082397461 33.04299926757813 25.50309944152832 34.24599838256836 C 22.44519996643066 35.44910049438477 19.06809997558594 35.57170104980469 15.93089962005615 34.59349822998047 C 12.79380035400391 33.61539840698242 10.08479976654053 31.59519958496094 8.252459526062012 28.86750030517578 C 6.420090198516846 26.13969993591309 5.574250221252441 22.86800003051758 5.85496997833252 19.59390068054199 C 6.135700225830078 16.31990051269531 7.526150226593018 13.23989963531494 9.796119689941406 10.86390018463135 C 12.06610012054443 8.487850189208984 15.07940006256104 6.958330154418945 18.33729934692383 6.528520107269287 C 21.59510040283203 6.098710060119629 24.902099609375 6.794400215148926 27.71059989929199 8.500410079956055" fill="none" fill-opacity="0.8" stroke="#263238" stroke-width="2" stroke-opacity="0.8" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_2qhwy4 =
    '<svg viewBox="14.2 17.5 10.3 8.1" ><path  d="M 17.08629989624023 25.50779914855957 L 17.08629989624023 17.50379943847656 L 16.21030044555664 17.50379943847656 L 14.20629978179932 19.56780052185059 L 14.80630016326904 20.17980003356934 L 16.09029960632324 18.81180000305176 L 16.09029960632324 25.50779914855957 L 17.08629989624023 25.50779914855957 Z M 21.63279914855957 25.65180015563965 C 23.24080085754395 25.65180015563965 24.48880004882813 24.63179969787598 24.48880004882813 23.01180076599121 C 24.48880004882813 21.35580062866211 23.27680015563965 20.4557991027832 21.93280029296875 20.4557991027832 C 21.12879943847656 20.4557991027832 20.45680046081543 20.79179954528809 20.06080055236816 21.17580032348633 L 20.06080055236816 18.39179992675781 L 23.96080017089844 18.39179992675781 L 23.96080017089844 17.50379943847656 L 19.06480026245117 17.50379943847656 L 19.06480026245117 21.81180000305176 L 19.79680061340332 22.06380081176758 C 20.33679962158203 21.54780006408691 20.94879913330078 21.31979942321777 21.64480018615723 21.31979942321777 C 22.72480010986328 21.31979942321777 23.48080062866211 21.99180030822754 23.48080062866211 23.04780006408691 C 23.48080062866211 24.01980018615723 22.72480010986328 24.7637996673584 21.63279914855957 24.7637996673584 C 20.66080093383789 24.7637996673584 19.95280075073242 24.37980079650879 19.42480087280273 23.69580078125 L 18.81279945373535 24.36779975891113 C 19.41279983520508 25.15979957580566 20.28879928588867 25.65180015563965 21.63279914855957 25.65180015563965 Z" fill="#263238" fill-opacity="0.8" stroke="none" stroke-width="1" stroke-opacity="0.8" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_169onn =
    '<svg viewBox="11.7 12.8 11.6 10.3" ><path  d="M 22.41382598876953 13.75088691711426 C 21.21892547607422 12.48397445678711 19.28482627868652 12.48397445678711 18.0898380279541 13.75088691711426 L 17.99542617797852 13.85098838806152 C 17.72303771972656 14.13973808288574 17.27845001220703 14.13973808288574 17.00054931640625 13.85098838806152 C 15.96122455596924 12.74323749542236 14.29391193389893 12.4604377746582 13.06567573547363 13.33246231079102 C 11.40947532653809 14.5168628692627 11.24829959869385 16.91497421264648 12.58766174316406 18.33501243591309 L 13.17679977416992 18.95958709716797 L 16.74487495422363 22.74238777160645 C 17.16172409057617 23.18435096740723 17.83424949645996 23.18435096740723 18.25101089477539 22.74238777160645 L 21.81908798217773 18.95958709716797 L 22.40822410583496 18.33501243591309 C 23.60872459411621 17.06818771362305 23.60872459411621 15.0177116394043 22.41382598876953 13.75088691711426 Z" fill="none" fill-opacity="0.7" stroke="#de9600" stroke-width="1.75" stroke-opacity="0.7" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_4pwzdo =
    '<svg viewBox="10.5 4.5 3.0 3.0" ><path  d="M 12 7.5 C 12.82839965820313 7.5 13.5 6.82843017578125 13.5 6 C 13.5 5.17156982421875 12.82839965820313 4.5 12 4.5 C 11.17160034179688 4.5 10.5 5.17156982421875 10.5 6 C 10.5 6.82843017578125 11.17160034179688 7.5 12 7.5 Z" fill="#004578" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ebvdbk =
    '<svg viewBox="10.5 10.5 3.0 3.0" ><path  d="M 12 13.5 C 12.82839965820313 13.5 13.5 12.82839965820313 13.5 12 C 13.5 11.17160034179688 12.82839965820313 10.5 12 10.5 C 11.17160034179688 10.5 10.5 11.17160034179688 10.5 12 C 10.5 12.82839965820313 11.17160034179688 13.5 12 13.5 Z" fill="#004578" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3tg6q4 =
    '<svg viewBox="10.5 16.5 3.0 3.0" ><path  d="M 12 19.5 C 12.82839965820313 19.5 13.5 18.82839965820313 13.5 18 C 13.5 17.17160034179688 12.82839965820313 16.5 12 16.5 C 11.17160034179688 16.5 10.5 17.17160034179688 10.5 18 C 10.5 18.82839965820313 11.17160034179688 19.5 12 19.5 Z" fill="#004578" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
