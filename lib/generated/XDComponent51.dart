import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDComponent2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDComponent51 extends StatelessWidget {
  XDComponent51({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 418.0, 389.5),
          size: Size(418.0, 389.5),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14.0),
                topRight: Radius.circular(14.0),
              ),
              color: const Color(0xf0f9f9f9),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 28.0, 418.0, 333.5),
          size: Size(418.0, 389.5),
          pinLeft: true,
          pinRight: true,
          fixedHeight: true,
          child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 64.5, 418.0, 269.0),
                size: Size(418.0, 333.5),
                pinLeft: true,
                pinRight: true,
                fixedHeight: true,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 209.0, 418.0, 60.0),
                      size: Size(418.0, 269.0),
                      pinBottom: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: XDComponent2(),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 203.0, 414.0, 1.0),
                      size: Size(418.0, 269.0),
                      pinLeft: true,
                      pinRight: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.93, -0.02),
                            end: Alignment(-1.0, 0.03),
                            colors: [
                              const Color(0x00919191),
                              const Color(0xff919191),
                              const Color(0x00919191)
                            ],
                            stops: [0.0, 0.506, 1.0],
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 139.0, 418.0, 60.0),
                      size: Size(418.0, 269.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: XDComponent2(),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 133.0, 414.0, 1.0),
                      size: Size(418.0, 269.0),
                      pinLeft: true,
                      pinRight: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.93, -0.02),
                            end: Alignment(-1.0, 0.03),
                            colors: [
                              const Color(0x00919191),
                              const Color(0xff919191),
                              const Color(0x00919191)
                            ],
                            stops: [0.0, 0.506, 1.0],
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 69.0, 418.0, 60.0),
                      size: Size(418.0, 269.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: XDComponent2(),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 64.0, 414.0, 1.0),
                      size: Size(418.0, 269.0),
                      pinLeft: true,
                      pinRight: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.93, -0.02),
                            end: Alignment(-1.0, 0.03),
                            colors: [
                              const Color(0x00919191),
                              const Color(0xff919191),
                              const Color(0x00919191)
                            ],
                            stops: [0.0, 0.506, 1.0],
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 415.0, 60.0),
                      size: Size(418.0, 269.0),
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: XDComponent2(),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(22.0, 0.0, 369.0, 41.5),
                size: Size(418.0, 333.5),
                pinTop: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(240.0, 0.0, 129.0, 41.5),
                      size: Size(369.0, 41.5),
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 2.0, 128.0, 39.5),
                            size: Size(129.0, 41.5),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xffde9600)),
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(56.0, 10.0, 49.0, 21.0),
                            size: Size(129.0, 41.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Text(
                              'Repeat',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontSize: 16,
                                color: const Color(0xffde9600),
                                height: 2.875,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(24.0, 12.0, 20.0, 19.5),
                            size: Size(129.0, 41.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Repeat' (shape)
                                SvgPicture.string(
                              _svg_a69nwa,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 10.0, 57.0, 21.0),
                      size: Size(369.0, 41.5),
                      pinLeft: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Up next',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 16,
                          color: const Color(0xff323130),
                          fontWeight: FontWeight.w600,
                          height: 2.875,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
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
    );
  }
}

const String _svg_a69nwa =
    '<svg viewBox="3874.0 36.0 20.0 19.5" ><path transform="translate(3872.0, 33.75)" d="M 14.60999965667725 2.469949960708618 L 14.53299999237061 2.402950048446655 C 14.3887996673584 2.293139934539795 14.2096996307373 2.239409923553467 14.02890014648438 2.251729965209961 C 13.84809970855713 2.264060020446777 13.67790031433105 2.341599941253662 13.55000019073486 2.469949960708618 L 13.48200035095215 2.547950029373169 C 13.37259960174561 2.693099975585938 13.31929969787598 2.872829914093018 13.33180046081543 3.054140090942383 C 13.34430027008057 3.235440015792847 13.421799659729 3.406160116195679 13.55000019073486 3.534950017929077 L 15.52099990844727 5.511950016021729 L 8.5 5.511950016021729 L 8.267000198364258 5.515950202941895 C 4.784999847412109 5.638949871063232 2 8.509949684143066 2 12.0359001159668 C 2 13.7258996963501 2.640000104904175 15.26589965820313 3.691999912261963 16.42589950561523 L 3.763999938964844 16.49489974975586 C 3.905489921569824 16.61599922180176 4.086900234222412 16.68009948730469 4.273009777069092 16.67490005493164 C 4.459129810333252 16.6697998046875 4.636690139770508 16.59560012817383 4.771240234375 16.46689987182617 C 4.905789852142334 16.33819961547852 4.987740039825439 16.16419982910156 5.001180171966553 15.97850036621094 C 5.01462984085083 15.792799949646 4.958610057830811 15.60869979858398 4.843999862670898 15.46189975738525 L 4.644000053405762 15.23089981079102 C 3.902299880981445 14.33119964599609 3.497720003128052 13.20100021362305 3.5 12.03489971160889 C 3.5 9.263950347900391 5.738999843597412 7.016950130462646 8.5 7.016950130462646 L 15.38099956512451 7.016950130462646 L 13.54899978637695 8.856949806213379 L 13.48200035095215 8.93494987487793 C 13.37259960174561 9.080100059509277 13.31929969787598 9.259830474853516 13.33180046081543 9.441140174865723 C 13.34430027008057 9.622440338134766 13.421799659729 9.793160438537598 13.55000019073486 9.921950340270996 C 13.61950016021729 9.991729736328125 13.70209980010986 10.04710006713867 13.79300022125244 10.08489990234375 C 13.88399982452393 10.12269973754883 13.98149967193604 10.14210033416748 14.07999992370605 10.14210033416748 C 14.17850017547607 10.14210033416748 14.27600002288818 10.12269973754883 14.36699962615967 10.08489990234375 C 14.45790004730225 10.04710006713867 14.54049968719482 9.991729736328125 14.60999965667725 9.921950340270996 L 17.79199981689453 6.728950023651123 L 17.85899925231934 6.650949954986572 C 17.9685001373291 6.50590991973877 18.02199935913086 6.326250076293945 18.00970077514648 6.14493989944458 C 17.99740028381348 5.963640213012695 17.92009925842285 5.79286003112793 17.79199981689453 5.663949966430664 L 14.60999965667725 2.469949960708618 Z M 20.22999954223633 7.570950031280518 C 20.0851993560791 7.451300144195557 19.90080070495605 7.390260219573975 19.71319961547852 7.399879932403564 C 19.52560043334961 7.40949010848999 19.3484001159668 7.489059925079346 19.21660041809082 7.622889995574951 C 19.08480072021484 7.756710052490234 19.00790023803711 7.935080051422119 19.00110054016113 8.122799873352051 C 18.99440002441406 8.310520172119141 19.05820083618164 8.493960380554199 19.18000030517578 8.63694953918457 C 20.03109931945801 9.56367015838623 20.50230026245117 10.77670001983643 20.5 12.03489971160889 C 20.5 14.80690002441406 18.26099967956543 17.05389976501465 15.5 17.05389976501465 L 8.557999610900879 17.05389976501465 L 10.46300029754639 15.14290046691895 L 10.53699970245361 15.05690002441406 C 10.63309955596924 14.92590045928955 10.68430042266846 14.76729965209961 10.68299961090088 14.6048002243042 C 10.68179988861084 14.44229984283447 10.62810039520264 14.28450012207031 10.52999973297119 14.15489959716797 L 10.46300029754639 14.07789993286133 L 10.37899971008301 14.0048999786377 C 10.24870014190674 13.90810012817383 10.09039974212646 13.85639953613281 9.928000450134277 13.85739994049072 C 9.765640258789063 13.85849952697754 9.608039855957031 13.9124002456665 9.479000091552734 14.01089954376221 L 9.402999877929688 14.07789993286133 L 6.221000194549561 17.27190017700195 L 6.14799976348877 17.35689926147461 C 6.051790237426758 17.48789978027344 6.000410079956055 17.64640045166016 6.001490116119385 17.80890083312988 C 6.002570152282715 17.97139930725098 6.056059837341309 18.12929916381836 6.153999805450439 18.2588996887207 L 6.221000194549561 18.33589935302734 L 9.402999877929688 21.52989959716797 L 9.487000465393066 21.60190010070801 C 9.779999732971191 21.8218994140625 10.19699954986572 21.79689979553223 10.46300029754639 21.52890014648438 C 10.59119987487793 21.40019989013672 10.66870021820068 21.22940063476563 10.68120002746582 21.04809951782227 C 10.69369983673096 20.86680030822754 10.64039993286133 20.68709945678711 10.5310001373291 20.54190063476563 L 10.46300029754639 20.46489906311035 L 8.564000129699707 18.55890083312988 L 15.5 18.55890083312988 L 15.73299980163574 18.55489921569824 C 19.21500015258789 18.43190002441406 22 15.55990028381348 22 12.03489971160889 C 22.00259971618652 10.40950012207031 21.39730072021484 8.841859817504883 20.30299949645996 7.639949798583984 L 20.22999954223633 7.570950031280518 Z" fill="#de9600" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
