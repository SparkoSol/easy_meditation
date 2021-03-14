import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDMobile12columns5.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDGroup7 extends StatelessWidget {
  XDGroup7({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 231.8, 232.0),
          size: Size(231.8, 232.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child:
              // Adobe XD layer: 'Mask Group' (group)
              Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(26.8, 0.0, 177.0, 210.0),
                size: Size(231.8, 232.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child:
                    // Adobe XD layer: 'Rectangle 7' (shape)
                    PageLink(
                  links: [
                    PageLinkInfo(
                      ease: Curves.easeOut,
                      duration: 0.3,
                      pageBuilder: () => XDMobile12columns5(),
                    ),
                  ],
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xff353961),
                    ),
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 116.0, 231.8, 116.0),
                size: Size(231.8, 232.0),
                pinLeft: true,
                pinRight: true,
                pinBottom: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Home card' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(27.0, 21.0, 177.8, 95.0),
                      size: Size(231.8, 116.0),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_jzjepe,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 231.8, 113.0),
                      size: Size(231.8, 116.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: SvgPicture.string(
                        _svg_ddfocp,
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
          bounds: Rect.fromLTWH(41.8, 63.0, 73.0, 46.0),
          size: Size(231.8, 232.0),
          fixedWidth: true,
          fixedHeight: true,
          child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 30.0, 57.0, 16.0),
                size: Size(73.0, 46.0),
                pinLeft: true,
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  '5 Modules',
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 12,
                    color: const Color(0xffe6ebfc),
                    fontWeight: FontWeight.w600,
                    height: 3.8333333333333335,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 73.0, 24.0),
                size: Size(73.0, 46.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                fixedHeight: true,
                child: Text(
                  'Beginner',
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 18,
                    color: const Color(0xfffefefe),
                    fontWeight: FontWeight.w600,
                    height: 2.5555555555555554,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(42.8, 165.0, 149.0, 31.0),
          size: Size(231.8, 232.0),
          fixedWidth: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Frame 6823' (group)
              Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(81.0, 0.0, 68.0, 31.0),
                size: Size(149.0, 31.0),
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child:
                    // Adobe XD layer: 'Group 21' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 68.0, 31.0),
                      size: Size(68.0, 31.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: const Color(0xff3f414e),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(16.0, 6.0, 34.0, 16.0),
                      size: Size(68.0, 31.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'START',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 12,
                          color: const Color(0xfffefefe),
                          fontWeight: FontWeight.w600,
                          height: 3.8333333333333335,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 7.0, 55.0, 17.0),
                size: Size(149.0, 31.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  '3-10 MIN',
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 13,
                    color: const Color(0xfffefefe),
                    height: 3.5384615384615383,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(151.8, 13.0, 40.0, 40.0),
          size: Size(231.8, 232.0),
          pinTop: true,
          fixedWidth: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Group 6' (group)
              Stack(
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
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(15.0, 14.0, 11.0, 12.0),
                size: Size(40.0, 40.0),
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'VectorHome ' (shape)
                    SvgPicture.string(
                  _svg_f64aia,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

const String _svg_jzjepe =
    '<svg viewBox="0.0 130.0 177.8 95.0" ><path transform="translate(0.0, 0.0)" d="M 27.47860145568848 161.8679962158203 C 17.23693466186523 156.9579925537109 8.255617141723633 161.5140075683594 1.464923858642578 161.8679962158203 C 0.3594570457935333 175.4929962158203 -1.188189744949341 204.2310028076172 1.464923858642578 210.177001953125 C 4.781303405761719 217.6089935302734 34.62879943847656 220.7940063476563 55.00090789794922 224.5099945068359 C 71.29861450195313 227.4830017089844 142.3327941894531 216.1929931640625 173.4434051513672 210.177001953125 C 176.7600402832031 187.3500061035156 181.4029235839844 130.4400024414063 173.4434051513672 130.0160064697266 C 163.4945220947266 129.4850006103516 140.2580108642578 142.4799957275391 124.1279907226563 172.7389984130859 C 103.0446243286133 212.2890014648438 69.64411926269531 202.7330017089844 57.79990005493164 188.9309997558594 C 48.25441360473633 177.8070068359375 40.74422073364258 168.2270050048828 27.47860145568848 161.8679962158203 Z" fill="#ffffff" fill-opacity="0.15" stroke="none" stroke-width="1" stroke-opacity="0.15" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ddfocp =
    '<svg viewBox="-27.0 109.0 231.8 113.0" ><path transform="translate(0.0, 0.0)" d="M 11.34983825683594 153.1029968261719 C -5.0741868019104 140.2270050048828 -17.73560905456543 142.6759948730469 -25.09029769897461 145.7559967041016 C -26.53140830993652 161.4709930419922 -28.54900169372559 194.6170043945313 -25.09029769897461 201.4739990234375 C -20.76686859130859 210.0460052490234 18.14369773864746 213.7200012207031 44.70180892944336 218.0059967041016 C 65.94821929931641 221.4349975585938 158.5517883300781 224.9459991455078 199.1094207763672 218.0059967041016 C 203.4320373535156 191.6779937744141 209.4849243164063 109.5080032348633 199.1094207763672 109.0179977416992 C 186.1385192871094 108.4059982299805 155.8470153808594 123.3939971923828 134.8189849853516 158.2940063476563 C 107.3346328735352 203.9100036621094 96.52576446533203 142.0639953613281 65.95314025878906 135.0220031738281 C 48.46511459350586 130.9949951171875 27.80271911621094 166.0019989013672 11.34983825683594 153.1029968261719 Z" fill="#ffffff" fill-opacity="0.15" stroke="none" stroke-width="1" stroke-opacity="0.15" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f64aia =
    '<svg viewBox="163.0 342.0 11.0 12.0" ><path transform="translate(163.0, 342.0)" d="M 10.16409969329834 4.573530197143555 L 2.506370067596436 0.222011998295784 C 1.391780018806458 -0.40938401222229 0 0.3812839984893799 0 1.64408004283905 L 0 10.3528003692627 C 0 11.62129974365234 1.391780018806458 12.41189956665039 2.506370067596436 11.77490043640137 L 10.16409969329834 7.42333984375 C 11.27859973907471 6.791950225830078 11.27859973907471 5.210609912872314 10.16409969329834 4.573530197143555 Z" fill="#3f414e" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
