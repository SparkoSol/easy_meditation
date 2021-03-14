import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'dart:ui' as ui;
import 'package:flutter_svg/flutter_svg.dart';

class XDNavigationBar extends StatelessWidget {
  XDNavigationBar({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 139.0),
          size: Size(414.0, 139.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child:
              // Adobe XD layer: 'Background' (group)
              Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 139.0),
                size: Size(414.0, 139.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Backgrounds - Navig…' (shape)
                    ClipRect(
                  child: BackdropFilter(
                    filter: ui.ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xf0f9f9f9),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x4d000000),
                            offset: Offset(0, 0.33000001311302185),
                            blurRadius: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(190.0, 105.0, 32.0, 22.0),
          size: Size(414.0, 139.0),
          pinBottom: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'Title',
            style: TextStyle(
              fontFamily: 'SF Pro Text',
              fontSize: 17,
              color: const Color(0xff000000),
              letterSpacing: -0.544,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(127.0, 67.0, 146.0, 17.0),
          size: Size(414.0, 139.0),
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'This is a prompt message.',
            style: TextStyle(
              fontFamily: 'SF Pro Text',
              fontSize: 13,
              color: const Color(0xff000000),
              letterSpacing: -0.08059999752044678,
              height: 1.3846153846153846,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 68.0),
          size: Size(414.0, 139.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Card Stack ' (group)
              Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 68.0),
                size: Size(414.0, 68.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Modal Card Stack - …' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 54.0),
                      size: Size(414.0, 68.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Background Dim' (shape)
                          Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffbababa),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.8, 413.9, 67.2),
                      size: Size(414.0, 68.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Rectangle' (shape)
                          SvgPicture.string(
                        _svg_kdcwfk,
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
          bounds: Rect.fromLTWH(0.0, 93.0, 198.0, 46.0),
          size: Size(414.0, 139.0),
          pinLeft: true,
          pinBottom: true,
          fixedWidth: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Navigation Bars - i…' (group)
              Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 198.0, 46.0),
                size: Size(198.0, 46.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Left - Action Button' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 2.0, 198.0, 44.0),
                      size: Size(198.0, 46.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Frame' (shape)
                          Container(),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(16.0, 0.0, 49.0, 46.0),
                      size: Size(198.0, 46.0),
                      pinLeft: true,
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child:
                          // Adobe XD layer: 'Text Button - Left' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 2.0, 54.0, 44.0),
                            size: Size(49.0, 46.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child:
                                // Adobe XD layer: 'Frame' (shape)
                                Container(),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 12.0, 48.0, 22.0),
                            size: Size(49.0, 46.0),
                            pinLeft: true,
                            pinRight: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Label' (text)
                                Text(
                              'Cancel',
                              style: TextStyle(
                                fontFamily: 'SFProText-Regular',
                                fontSize: 17,
                                color: const Color(0xff007aff),
                                letterSpacing: -0.40800000000000003,
                              ),
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
        Pinned.fromSize(
          bounds: Rect.fromLTWH(216.0, 93.0, 198.0, 46.0),
          size: Size(414.0, 139.0),
          pinRight: true,
          pinBottom: true,
          fixedWidth: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Controls - Right' (group)
              Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 198.0, 46.0),
                size: Size(198.0, 46.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Right - Text Buttons' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 2.0, 198.0, 44.0),
                      size: Size(198.0, 46.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Frame' (shape)
                          Container(),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(141.0, 0.0, 41.0, 46.0),
                      size: Size(198.0, 46.0),
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child:
                          // Adobe XD layer: 'Text Buttont - Right' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(-1.9, 2.0, 43.0, 44.0),
                            size: Size(41.0, 46.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child:
                                // Adobe XD layer: 'Frame' (shape)
                                Container(),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(1.0, 12.0, 40.0, 22.0),
                            size: Size(41.0, 46.0),
                            pinLeft: true,
                            pinRight: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Label' (text)
                                Text(
                              'Done',
                              style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 17,
                                color: const Color(0xff007aff),
                                letterSpacing: -0.40800000000000003,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.right,
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
    );
  }
}

const String _svg_kdcwfk =
    '<svg viewBox="0.0 0.8 413.9 67.2" ><path transform="translate(0.0, 66.0)" d="M 0 -65.234375 L 413.8603515625 -65.234375 L 413.8603515625 2 L 0 2 L 0 -65.234375 Z M 396.2023315429688 -12 L 400.4408264160156 -12 C 404.4863586425781 -12 406.4159545898438 -11.53586959838867 408.2144165039063 -10.66434001922607 C 410.0130004882813 -9.792800903320313 411.4244384765625 -8.513857841491699 412.3862609863281 -6.884229183197021 C 413.34814453125 -5.254599094390869 413.8603515625 -3.506185054779053 413.8603515625 0.1595143973827362 L 413.8603515625 2 L 0 2 L 0 0.1595143973827362 C 0 -3.506185054779053 0.5122246146202087 -5.254599094390869 1.474075794219971 -6.884229183197021 C 2.435925960540771 -8.513857841491699 3.847402572631836 -9.792800903320313 5.6459059715271 -10.66434001922607 C 7.444410800933838 -11.53586959838867 9.374009132385254 -12 13.41957092285156 -12 L 17.65804290771484 -12 C 17.65804290771484 -17.52285003662109 22.59914970397949 -22 28.6943187713623 -22 L 385.1660461425781 -22 C 391.2611389160156 -22 396.2023315429688 -17.52285003662109 396.2023315429688 -12 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
