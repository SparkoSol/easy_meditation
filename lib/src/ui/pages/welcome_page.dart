import 'package:easy_meditation/src/base/pages.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/service/ui/navigation_service.dart';
import 'package:easy_meditation/src/ui/pages/splash_screen.dart';
import 'package:easy_meditation/src/ui/widgets/page_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_meditation/src/ui/views/localized_view.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final controller = PageController();

  var isLast = false;

  @override
  Widget build(BuildContext context) {
    return LocalizedView(
      builder: (_, lang) => Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, MediaQuery.of(context).padding.top + 8, 8, 8),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/sign-in');
                  },
                  child: Text(lang.skip),
                ),
              ),
              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: controller,
                  children: <Widget>[
                    Column(children: [
                      Expanded(
                        child: Image.asset('assets/images/13082.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 60, 50),
                        child: Text(
                          'Overcome all that binds and constraints us',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
                    Column(children: [
                      Expanded(
                        child: Image.asset('assets/images/13082.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 60, 50),
                        child: Text(
                          'Show our mind and body some love',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
                    Column(children: [
                      Expanded(
                        child: Transform.translate(
                          offset: Offset(50, 0),
                          child: Image.asset('assets/images/Group 9680.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 60, 20),
                        child: Text(
                          'Easy and enjoyable that also brings you joy',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: TextButton(
                            child: Text('GET STARTED'),
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed('/sign-in');
                              // NavigationService.toPage(context, AppPages.home);
                            },
                            style: TextButton.styleFrom(
                                primary: AppTheme.primaryColor),
                          ),
                        ),
                      )
                    ]),
                    Container(color: Colors.green),
                  ],
                  onPageChanged: (page) {
                    /// Change view on last page.
                    if (page == 2) setState(() => isLast = true);
                  },
                ),
              ),
              if (!isLast)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                  child: Row(children: [
                    PageIndicator(pages: 3, controller: controller),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      child: Row(children: [
                        Text(lang.next, style: TextStyle(fontSize: 17)),
                        SizedBox(width: 5),
                        Icon(CupertinoIcons.arrow_right, size: 17)
                      ]),
                    ),
                  ]),
                )
            ],
          ),
        ),
      ),
    );
  }
}
