import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDMobile12columns26.dart';
import 'package:adobe_xd/page_link.dart';
import './XDGroup7.dart';
import './XDMobile12columns18.dart';
import './XDMobile12columns10.dart';
import './XDComponent2.dart';
import './XDGroup6799.dart';

class XDMobile12columns19 extends StatelessWidget {
  XDMobile12columns19({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-3.0, 0.0),
            child:
                // Adobe XD layer: 'Header / Default' (group)
                SizedBox(
              width: 420.0,
              height: 799.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 420.0, 799.0),
                    size: Size(420.0, 799.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Header' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 420.0, 799.0),
                          size: Size(420.0, 799.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'bg' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.0, 0.0, 414.0, 341.6),
                                size: Size(420.0, 799.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Rectangle 4' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffde9600),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 420.0, 304.0),
                                size: Size(420.0, 799.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Group 6848' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: const AssetImage(''),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.0, 210.0, 414.0, 589.0),
                                size: Size(420.0, 799.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Rectangle 5' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(38.96),
                                      topRight: Radius.circular(38.96),
                                    ),
                                    color: const Color(0xfff3f5fd),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 105.0, 282.0, 82.0),
                          size: Size(420.0, 799.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Profile' (group)
                              PageLink(
                            links: [
                              PageLinkInfo(
                                ease: Curves.easeIn,
                                duration: 0.3,
                                pageBuilder: () => XDMobile12columns26(),
                              ),
                            ],
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 282.0, 82.0),
                                  size: Size(282.0, 82.0),
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child:
                                      // Adobe XD layer: 'Frame 6813' (group)
                                      Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(
                                            91.0, 0.0, 191.0, 62.0),
                                        size: Size(282.0, 82.0),
                                        pinRight: true,
                                        pinTop: true,
                                        fixedWidth: true,
                                        fixedHeight: true,
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 41.0, 140.0, 21.0),
                                              size: Size(191.0, 62.0),
                                              pinLeft: true,
                                              pinBottom: true,
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: Text(
                                                'Live happier with us',
                                                style: TextStyle(
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xfffefefe),
                                                  fontWeight: FontWeight.w500,
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
                                                  0.0, 9.0, 191.0, 32.0),
                                              size: Size(191.0, 62.0),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              fixedHeight: true,
                                              child: Text(
                                                'Welcome, Kristin',
                                                style: TextStyle(
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize: 24,
                                                  color:
                                                      const Color(0xfffefefe),
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.9166666666666667,
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
                                            Rect.fromLTWH(0.0, 3.0, 78.0, 79.0),
                                        size: Size(282.0, 82.0),
                                        pinLeft: true,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-6.8, 253.5),
            child: SizedBox(
              width: 429.0,
              height: 1055.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 428.8, 480.0),
                    size: Size(428.8, 1055.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 47.0, 428.8, 433.0),
                          size: Size(428.8, 480.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 232.0, 428.8, 201.0),
                                size: Size(428.8, 433.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Group 7' (component)
                                    PageLink(
                                  links: [
                                    PageLinkInfo(
                                      ease: Curves.easeOut,
                                      duration: 0.3,
                                      pageBuilder: () => XDMobile12columns18(),
                                    ),
                                  ],
                                  child: XDGroup7(),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 428.8, 232.0),
                                size: Size(428.8, 433.0),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 428.8, 232.0),
                                      size: Size(428.8, 232.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                197.0, 0.0, 231.8, 232.0),
                                            size: Size(428.8, 232.0),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child:
                                                // Adobe XD layer: 'Group 7' (component)
                                                PageLink(
                                              links: [
                                                PageLinkInfo(
                                                  ease: Curves.easeOut,
                                                  duration: 0.3,
                                                  pageBuilder: () =>
                                                      XDMobile12columns10(),
                                                ),
                                              ],
                                              child: XDGroup7(),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 231.8, 232.0),
                                            size: Size(428.8, 232.0),
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
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(29.8, 0.0, 156.0, 32.0),
                          size: Size(428.8, 480.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Choose a level',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 24,
                              color: const Color(0xff323130),
                              fontWeight: FontWeight.w600,
                              height: 1.9166666666666667,
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
                    bounds: Rect.fromLTWH(26.8, 481.0, 374.0, 574.0),
                    size: Size(428.8, 1055.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 32.0, 374.0, 542.0),
                          size: Size(374.0, 574.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 460.0, 374.0, 82.0),
                                size: Size(374.0, 542.0),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 368.0, 374.0, 82.0),
                                size: Size(374.0, 542.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 276.0, 374.0, 82.0),
                                size: Size(374.0, 542.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 184.0, 374.0, 82.0),
                                size: Size(374.0, 542.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 92.0, 374.0, 82.0),
                                size: Size(374.0, 542.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 374.0, 82.0),
                                size: Size(374.0, 542.0),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: XDComponent2(),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(14.0, 0.0, 207.0, 27.0),
                          size: Size(374.0, 574.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Recommended for you',
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
            offset: Offset(0.0, 796.0),
            child:
                // Adobe XD layer: 'Group 6799' (component)
                SizedBox(
              width: 414.0,
              height: 94.0,
              child: XDGroup6799(),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
