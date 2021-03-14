import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDComponent61.dart';
import './XDUserinput.dart';
import 'dart:ui' as ui;
import './XDMobile12columns56.dart';
import 'package:adobe_xd/page_link.dart';
import './XDMobile12columns4.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDMobile12columns57 extends StatelessWidget {
  XDMobile12columns57({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(387.1, 822.1),
            child: SvgPicture.string(
              _svg_xeny7p,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(327.0, 859.0),
            child: SizedBox(
              width: 64.0,
              height: 27.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 41.0, 27.0),
                    size: Size(64.3, 27.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 20,
                        color: Colors.transparent,
                        height: 2.3,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(49.6, 16.2, 14.7, 4.3),
                    size: Size(64.3, 27.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 14.7, 4.3),
                          size: Size(14.7, 4.3),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_sh0edf,
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
          ),
          Transform.translate(
            offset: Offset(22.3, 873.5),
            child: SizedBox(
              width: 39.0,
              height: 0.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(32.0, 0.0, 6.5, 1.0),
                    size: Size(38.5, 0.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_5red43,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.5, 0.0, 13.5, 1.0),
                    size: Size(38.5, 0.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_4tc1vw,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 6.5, 1.0),
                    size: Size(38.5, 0.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_hvb61p,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 1.0),
            child: Container(
              width: 500.0,
              height: 889.0,
              decoration: BoxDecoration(),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, -10.0),
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
            offset: Offset(0.0, 545.0),
            child: SizedBox(
              width: 414.0,
              height: 655.0,
              child: XDComponent61(),
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 598.0),
            child: SizedBox(
              width: 376.0,
              height: 59.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(-2.0, 3.0, 380.0, 56.0),
                    size: Size(376.0, 59.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(158.0, 16.0, 60.0, 27.0),
                    size: Size(376.0, 59.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 20,
                        color: const Color(0xffde9600),
                        fontWeight: FontWeight.w600,
                        height: 0.55,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(70.0, -77.8),
            child:
                // Adobe XD layer: 'Auth Blob' (group)
                SizedBox(
              width: 543.0,
              height: 374.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 29.2, 204.3, 161.6),
                    size: Size(543.2, 374.2),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_5rkpxt,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(307.7, 0.0, 175.1, 190.8),
                    size: Size(543.2, 374.2),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_c5xnm4,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(309.1, 250.5, 234.1, 123.7),
                    size: Size(543.2, 374.2),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_5n04m,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(104.0, 738.0),
            child: SizedBox(
              width: 60.0,
              height: 60.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 60.0, 60.0),
                    size: Size(60.0, 60.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: const Color(0xff7583ca),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(24.0, 18.0, 12.0, 24.0),
                    size: Size(60.0, 60.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'FB' (shape)
                        SvgPicture.string(
                      _svg_hxp1x2,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(177.0, 738.0),
            child: SizedBox(
              width: 60.0,
              height: 60.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 60.0, 60.0),
                    size: Size(60.0, 60.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(58.0),
                        color: const Color(0xfffefefe),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(18.0, 18.0, 24.0, 25.0),
                    size: Size(60.0, 60.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Google' (shape)
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
          ),
          Transform.translate(
            offset: Offset(156.0, 129.5),
            child: SizedBox(
              width: 104.0,
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 28,
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w700,
                  height: 1.6428571428571428,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(151.0, 701.0),
            child: Text(
              'OR LOG IN WITH',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 14,
                color: const Color(0xff6c6d72),
                fontWeight: FontWeight.w600,
                height: 3.2857142857142856,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: 414.0,
            height: 890.0,
            decoration: BoxDecoration(
              color: const Color(0x3e000000),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 416.0),
            child: SizedBox(
              width: 375.0,
              height: 120.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 68.0, 375.0, 52.0),
                    size: Size(375.0, 120.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'User input' (component)
                        XDUserinput(),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 52.0),
                    size: Size(375.0, 120.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'User input' (component)
                        XDUserinput(),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(72.0, 339.0),
            child:
                // Adobe XD layer: 'Views - Alerts - Li…' (group)
                SizedBox(
              width: 270.0,
              height: 213.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 270.0, 213.0),
                    size: Size(270.0, 213.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Alerts - Text Field' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 270.0, 213.0),
                          size: Size(270.0, 213.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Background' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 270.0, 213.0),
                                size: Size(270.0, 213.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Platter' (shape)
                                    ClipRect(
                                  child: BackdropFilter(
                                    filter: ui.ImageFilter.blur(
                                        sigmaX: 20.0, sigmaY: 20.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                        color: const Color(0xccf2f2f2),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 169.0, 270.0, 44.0),
                          size: Size(270.0, 213.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Alerts  - Bottom Ac…' (group)
                              PageLink(
                            links: [
                              PageLinkInfo(
                                ease: Curves.easeOut,
                                duration: 0.3,
                                pageBuilder: () => XDMobile12columns56(),
                              ),
                            ],
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 270.0, 44.0),
                                  size: Size(270.0, 44.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child:
                                      // Adobe XD layer: 'Bottom Actions' (group)
                                      Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds: Rect.fromLTWH(
                                            68.0, 0.0, 134.0, 44.0),
                                        size: Size(270.0, 44.0),
                                        pinLeft: true,
                                        pinTop: true,
                                        pinBottom: true,
                                        fixedWidth: true,
                                        child:
                                            // Adobe XD layer: 'Left Action' (group)
                                            Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 0.0, 134.0, 44.0),
                                              size: Size(134.0, 44.0),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                                  // Adobe XD layer: 'Frame' (shape)
                                                  Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  43.0, 10.0, 48.0, 22.0),
                                              size: Size(134.0, 44.0),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child:
                                                  // Adobe XD layer: 'Label' (text)
                                                  Text(
                                                'Cancel',
                                                style: TextStyle(
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 17,
                                                  color:
                                                      const Color(0xff007aff),
                                                  letterSpacing:
                                                      -0.40800000000000003,
                                                  height: 1.2941176470588236,
                                                ),
                                                textHeightBehavior:
                                                    TextHeightBehavior(
                                                        applyHeightToFirstAscent:
                                                            false),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds:
                                            Rect.fromLTWH(0.0, 0.0, 270.0, 1.0),
                                        size: Size(270.0, 44.0),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        fixedHeight: true,
                                        child:
                                            // Adobe XD layer: 'Top Border' (group)
                                            Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 0.0, 270.0, 1.0),
                                              size: Size(270.0, 1.0),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                                  // Adobe XD layer: 'Frame' (shape)
                                                  Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 0.0, 270.0, 0.5),
                                              size: Size(270.0, 1.0),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child:
                                                  // Adobe XD layer: 'Separator' (shape)
                                                  Container(
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0x5c3c3c43),
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
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(17.0, 121.0, 236.0, 32.0),
                          size: Size(270.0, 213.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Description' (text)
                              SingleChildScrollView(
                                  child: Text(
                            'Place you hand on the home button now to continue ',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 13,
                              color: const Color(0xff000000),
                              letterSpacing: -0.10400000000000001,
                              height: 1.2307692307692308,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                          )),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(17.0, 97.0, 236.0, 22.0),
                          size: Size(270.0, 213.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Title' (text)
                              Text(
                            'Touch ID For Buddhism',
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 17,
                              color: const Color(0xff000000),
                              letterSpacing: -0.544,
                              fontWeight: FontWeight.w600,
                              height: 1.2941176470588236,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(105.0, 19.0, 60.0, 60.0),
                          size: Size(270.0, 213.0),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: '200px-Touch_ID_logo' (shape)
                              PageLink(
                            links: [
                              PageLinkInfo(
                                ease: Curves.easeOut,
                                duration: 0.3,
                                pageBuilder: () => XDMobile12columns4(),
                              ),
                            ],
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: const AssetImage(''),
                                  fit: BoxFit.fill,
                                ),
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
          Transform.translate(
            offset: Offset(94.0, 848.0),
            child: Text(
              'Don’t have an account? Sign up',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 16,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                height: 2.875,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(250.0, 738.0),
            child:
                // Adobe XD layer: 'white-logo-masked-c…' (shape)
                Container(
              width: 60.0,
              height: 60.0,
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
    );
  }
}

const String _svg_sh0edf =
    '<svg viewBox="62.6 702.0 14.7 4.3" ><path  d="M 62.60103607177734 702 L 77.30731201171875 702 L 72.96886444091797 706.3384399414063" fill="none" fill-opacity="0.0" stroke="#707070" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xeny7p =
    '<svg viewBox="387.1 822.1 5.0 5.0" ><path transform="translate(-405.25, -1.58)" d="M 792.3998413085938 823.692138671875 L 797.4035034179688 828.6583251953125" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5red43 =
    '<svg viewBox="54.3 825.5 6.5 1.0" ><path transform="translate(-278.0, -1055.0)" d="M 332.3315124511719 1880.510009765625 L 338.8315124511719 1880.510009765625" fill="none" fill-opacity="0.0" stroke="#de9600" stroke-width="3" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_4tc1vw =
    '<svg viewBox="34.8 825.5 13.5 1.0" ><path transform="translate(-297.5, -1055.0)" d="M 332.3315124511719 1880.510009765625 L 345.8315124511719 1880.510009765625" fill="none" fill-opacity="0.0" stroke="#de9600" stroke-width="3" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_hvb61p =
    '<svg viewBox="22.3 825.5 6.5 1.0" ><path transform="translate(-310.0, -1055.0)" d="M 332.3315124511719 1880.510009765625 L 338.8315124511719 1880.510009765625" fill="none" fill-opacity="0.0" stroke="#de9600" stroke-width="3" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_5rkpxt =
    '<svg viewBox="-41.7 -48.6 204.3 161.6" ><path  d="M 109.0100021362305 103.0009994506836 C 94.03990173339844 43.18050003051758 38.10950088500977 2.182729959487915 -23.46290016174316 5.887899875640869 C -30.27750015258789 6.297359943389893 -36.27690124511719 1.44008994102478 -37.3129997253418 -5.303890228271484 L -41.54949951171875 -32.82569885253906 C -42.72610092163086 -40.46089935302734 -37.13230133056641 -47.44570159912109 -29.42620086669922 -48.03179931640625 C -9.785490036010742 -49.52510070800781 9.786930084228516 -47.84310150146484 28.92970085144043 -43.0099983215332 C 51.86320114135742 -37.21739959716797 73.19850158691406 -27.16160011291504 92.34529876708984 -13.12769985198975 C 111.4919967651367 0.9061930179595947 127.4990005493164 18.2278003692627 139.9190063476563 38.35129928588867 C 150.2870025634766 55.15110015869141 157.7689971923828 73.30359649658203 162.25 92.47979736328125 C 164.0090026855469 100.0029983520508 159.0220031738281 107.4329986572266 151.3840026855469 108.609001159668 L 123.8479995727539 112.8440017700195 C 117.1019973754883 113.8840026855469 110.6650009155273 109.6210021972656 109.0100021362305 103.0009994506836 Z" fill="#faf8f5" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c5xnm4 =
    '<svg viewBox="266.0 -77.8 175.1 190.8" ><path  d="M 277.2860107421875 58.89369964599609 C 338.2959899902344 49.79330062866211 384.5369873046875 -1.882390022277832 386.8099975585938 -63.50149917602539 C 387.06298828125 -70.32170104980469 392.4800109863281 -75.81729888916016 399.2940063476563 -76.19860076904297 L 427.1069946289063 -77.74810028076172 C 434.8210144042969 -78.17769622802734 441.2380065917969 -71.93550109863281 441.072998046875 -64.21600341796875 C 440.656005859375 -44.52999877929688 437.0899963378906 -25.22139930725098 430.4200134277344 -6.643330097198486 C 422.4330139160156 15.61180019378662 410.3529968261719 35.86780166625977 394.5239868164063 53.55870056152344 C 378.6940002441406 71.24960327148438 359.89599609375 85.49629974365234 338.6579895019531 95.90529632568359 C 320.9280090332031 104.5920028686523 302.1270141601563 110.2799987792969 282.6029968261719 112.8820037841797 C 274.9450073242188 113.9010009765625 268.0260009765625 108.2210006713867 267.5960083007813 100.5100021362305 L 266.0459899902344 72.70680236816406 C 265.6730041503906 65.89459991455078 270.5360107421875 59.90129852294922 277.2860107421875 58.89369964599609 Z" fill="#faf8f5" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5n04m =
    '<svg viewBox="267.4 172.7 234.1 123.7" ><path  d="M 317.1640014648438 179.2059936523438 C 348.6059875488281 232.2510070800781 413.9169921875 255.5599975585938 471.8619995117188 234.4120025634766 C 478.2739868164063 232.0720062255859 485.4110107421875 235.0099945068359 488.3320007324219 241.1790008544922 L 500.2560119628906 266.3429870605469 C 503.5610046386719 273.3219909667969 500.2009887695313 281.614990234375 492.9849853515625 284.3789978027344 C 474.5889892578125 291.4219970703125 455.35400390625 295.4079895019531 435.6279907226563 296.2430114746094 C 411.9960021972656 297.2449951171875 388.6780090332031 293.7090148925781 366.3169860839844 285.7300109863281 C 343.9559936523438 277.7510070800781 323.6690063476563 265.7250061035156 306.0190124511719 249.9909973144531 C 291.2850036621094 236.85400390625 278.9240112304688 221.6000061035156 269.1520080566406 204.5019989013672 C 265.3200073242188 197.7969970703125 267.9739990234375 189.25 274.9549865722656 185.9400024414063 L 300.1289978027344 174.0130004882813 C 306.2999877929688 171.0910034179688 313.68798828125 173.3359985351563 317.1640014648438 179.2059936523438 Z" fill="#faf8f5" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hxp1x2 =
    '<svg viewBox="1079.0 1881.0 12.0 24.0" ><path transform="translate(1078.16, 1880.07)" d="M 10.65026760101318 4.918592929840088 L 12.84106349945068 4.918592929840088 L 12.84106349945068 1.102592945098877 C 12.46311664581299 1.050593614578247 11.16323852539063 0.9335939884185791 9.649347305297852 0.9335939884185791 C 6.490608692169189 0.9335939884185791 4.326777935028076 2.920596361160278 4.326777935028076 6.5725998878479 L 4.326777935028076 9.933599472045898 L 0.8410639762878418 9.933599472045898 L 0.8410639762878418 14.19962215423584 L 4.326777935028076 14.19962215423584 L 4.326777935028076 24.93359375 L 8.600439071655273 24.93359375 L 8.600439071655273 14.2006196975708 L 11.94515991210938 14.2006196975708 L 12.47608089447021 9.934596061706543 L 8.599431991577148 9.934596061706543 L 8.599431991577148 6.995595932006836 C 8.600439071655273 5.762600421905518 8.932404518127441 4.918592929840088 10.65026760101318 4.918592929840088 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
