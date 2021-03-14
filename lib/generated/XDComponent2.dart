import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDComponent2 extends StatelessWidget {
  XDComponent2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, -1.0, 382.0, 83.0),
          size: Size(374.0, 82.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: const Color(0xffffffff),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(16.0, 18.0, 347.0, 46.0),
          size: Size(374.0, 82.0),
          fixedWidth: true,
          fixedHeight: true,
          child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(305.0, 10.0, 42.0, 19.0),
                size: Size(347.0, 46.0),
                pinRight: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  '10 min',
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 14,
                    color: const Color(0xffa0a3b1),
                    height: 3.2857142857142856,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 158.0, 46.0),
                size: Size(347.0, 46.0),
                pinLeft: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(58.0, 0.0, 100.0, 46.0),
                      size: Size(158.0, 46.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 27.0, 100.0, 19.0),
                            size: Size(100.0, 46.0),
                            pinLeft: true,
                            pinRight: true,
                            pinBottom: true,
                            fixedHeight: true,
                            child: Text(
                              'Beginner course',
                              style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 14,
                                color: const Color(0xffa0a3b1),
                                height: 3.2857142857142856,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 24.0),
                            size: Size(100.0, 46.0),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Text(
                              'Module 1',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: 18,
                                color: const Color(0xff323130),
                                fontWeight: FontWeight.w600,
                                height: 2.5555555555555554,
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
                      bounds: Rect.fromLTWH(0.0, 3.0, 40.0, 40.0),
                      size: Size(158.0, 46.0),
                      pinLeft: true,
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 40.0, 40.0),
                            size: Size(40.0, 40.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xffde9600)),
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(15.0, 14.0, 11.0, 12.0),
                            size: Size(40.0, 40.0),
                            fixedWidth: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Play' (shape)
                                SvgPicture.string(
                              _svg_8jdtlw,
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
            ],
          ),
        ),
      ],
    );
  }
}

const String _svg_8jdtlw =
    '<svg viewBox="2292.0 992.0 11.0 12.0" ><path transform="translate(2292.0, 991.5)" d="M 10.16409969329834 5.073530197143555 L 2.506370067596436 0.7220119833946228 C 1.391780018806458 0.09061630070209503 0 0.8812839984893799 0 2.144079923629761 L 0 10.8528003692627 C 0 12.12129974365234 1.391780018806458 12.91189956665039 2.506370067596436 12.27490043640137 L 10.16409969329834 7.92333984375 C 11.27859973907471 7.291950225830078 11.27859973907471 5.710609912872314 10.16409969329834 5.073530197143555 Z" fill="#de9600" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
