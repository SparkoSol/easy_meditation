import 'package:flutter/material.dart';
import './XDMobile12columns3.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import './XDMobile12columns1.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDMobile12columns extends StatelessWidget {
  XDMobile12columns({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: 414.0,
            height: 890.0,
            decoration: BoxDecoration(
              color: const Color(0x00e2e7fc),
            ),
          ),
          Transform.translate(
            offset: Offset(43.0, 578.0),
            child: SizedBox(
              width: 292.0,
              height: 152.0,
              child: Text(
                'Overcome all that binds and contrains us',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 40,
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w700,
                  height: 1.15,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(363.0, 18.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDMobile12columns3(),
                ),
              ],
              child: Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 16,
                  color: const Color(0xffa19f9d),
                  height: 2.875,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(22.3, 825.5),
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
                      _svg_78omvx,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.5, 0.0, 6.5, 1.0),
                    size: Size(38.5, 0.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_8a3y5b,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 13.5, 1.0),
                    size: Size(38.5, 0.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_gq11ya,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(327.0, 811.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDMobile12columns1(),
                ),
              ],
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
                          color: const Color(0xff707070),
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
                              _svg_3r5lfw,
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
          ),
          Transform.translate(
            offset: Offset(387.1, 822.1),
            child: SvgPicture.string(
              _svg_xeny7p,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(7.0, 126.0),
            child:
                // Adobe XD layer: '13082' (shape)
                Container(
              width: 401.0,
              height: 401.0,
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

const String _svg_78omvx =
    '<svg viewBox="54.3 825.5 6.5 1.0" ><path transform="translate(-278.0, -1055.0)" d="M 332.3315124511719 1880.510009765625 L 338.8315124511719 1880.510009765625" fill="none" fill-opacity="0.3" stroke="#de9600" stroke-width="3" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_8a3y5b =
    '<svg viewBox="41.8 825.5 6.5 1.0" ><path transform="translate(-290.5, -1055.0)" d="M 332.3315124511719 1880.510009765625 L 338.8315124511719 1880.510009765625" fill="none" fill-opacity="0.3" stroke="#de9600" stroke-width="3" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_gq11ya =
    '<svg viewBox="22.3 825.5 13.5 1.0" ><path transform="translate(-310.0, -1055.0)" d="M 332.3315124511719 1880.510009765625 L 345.8315124511719 1880.510009765625" fill="none" stroke="#de9600" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_3r5lfw =
    '<svg viewBox="62.6 702.0 14.7 4.3" ><path  d="M 62.60103607177734 702 L 77.30731201171875 702 L 72.96886444091797 706.3384399414063" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xeny7p =
    '<svg viewBox="387.1 822.1 5.0 5.0" ><path transform="translate(-405.25, -1.58)" d="M 792.3998413085938 823.692138671875 L 797.4035034179688 828.6583251953125" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
