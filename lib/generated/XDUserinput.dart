import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDUserinput extends StatelessWidget {
  XDUserinput({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 52.0),
          size: Size(375.0, 52.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              color: const Color(0xff596a77),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(46.0, 15.0, 61.0, 21.0),
          size: Size(375.0, 52.0),
          pinLeft: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'fullname',
            style: TextStyle(
              fontFamily: 'SF Pro Text',
              fontSize: 16,
              color: const Color(0xfffefefe),
              height: 2.875,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(16.0, 16.0, 20.0, 20.0),
          size: Size(375.0, 52.0),
          pinLeft: true,
          fixedWidth: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'User' (group)
              Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(5.7, -0.1, 9.0, 9.0),
                size: Size(20.0, 20.0),
                child: SvgPicture.string(
                  _svg_hq4e7b,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(2.1, 10.3, 16.2, 8.8),
                size: Size(20.0, 20.0),
                child: SvgPicture.string(
                  _svg_1ucsqf,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 20.0, 20.0),
                size: Size(20.0, 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

const String _svg_hq4e7b =
    '<svg viewBox="5.7 -0.1 9.0 9.0" ><path transform="translate(0.0, -0.47)" d="M 5.687349796295166 4.92048978805542 C 5.687349796295166 7.414040088653564 7.715370178222656 9.440580368041992 10.21049976348877 9.440580368041992 C 12.7056999206543 9.440580368041992 14.73349952697754 7.407859802246094 14.73349952697754 4.914480209350586 C 14.73349952697754 2.420929908752441 12.70549964904785 0.3943850100040436 10.21049976348877 0.3943850100040436 C 7.715280055999756 0.3943850100040436 5.687349796295166 2.421020030975342 5.687349796295166 4.92048978805542 Z M 7.089280128479004 4.914480209350586 C 7.089280128479004 3.198009967803955 8.486880302429199 1.795500040054321 10.21049976348877 1.795500040054321 C 11.93400001525879 1.795500040054321 13.33160018920898 3.198009967803955 13.33160018920898 4.914480209350586 C 13.33160018920898 6.630829811096191 11.92809963226318 8.033459663391113 10.21049976348877 8.033459663391113 C 8.492770195007324 8.033459663391113 7.089280128479004 6.630829811096191 7.089280128479004 4.914480209350586 Z" fill="#eff6fc" stroke="#eff6fc" stroke-width="0.20000000298023224" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1ucsqf =
    '<svg viewBox="2.1 10.3 16.2 8.8" ><path transform="translate(0.0, -0.47)" d="M 14.39659976959229 19.66110038757324 L 6.024089813232422 19.66110038757324 C 3.857779979705811 19.66110038757324 2.101320028305054 17.68059921264648 2.101320028305054 15.23799991607666 C 2.101320028305054 12.79539966583252 3.865099906921387 10.81490039825439 6.024089813232422 10.81490039825439 L 14.39659976959229 10.81490039825439 C 16.56290054321289 10.81490039825439 18.31929969787598 12.80370044708252 18.31929969787598 15.23799991607666 C 18.31929969787598 17.67239952087402 16.56290054321289 19.66110038757324 14.39659976959229 19.66110038757324 Z M 6.024089813232422 12.46539974212646 C 4.670149803161621 12.46539974212646 3.565040111541748 13.71140003204346 3.565040111541748 15.23799991607666 C 3.565040111541748 16.76469993591309 4.670149803161621 18.01070022583008 6.024089813232422 18.01070022583008 L 14.39659976959229 18.01070022583008 C 15.7504997253418 18.01070022583008 16.85560035705566 16.76469993591309 16.85560035705566 15.23799991607666 C 16.85560035705566 13.71140003204346 15.7504997253418 12.46539974212646 14.39659976959229 12.46539974212646 L 6.024089813232422 12.46539974212646 Z" fill="#eff6fc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
