import 'package:easy_meditation/src/base/pages.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/service/ui/navigation_service.dart';
import 'package:easy_meditation/src/ui/modals/language_selection.dart';
import 'package:easy_meditation/src/ui/modals/payment_bottom_sheet.dart';
import 'package:easy_meditation/src/ui/views/colored_background.dart';
import 'package:easy_meditation/src/ui/widgets/preference_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreferencesView extends StatefulWidget {
  @override
  _PreferencesViewState createState() => _PreferencesViewState();
}

class _PreferencesViewState extends State<PreferencesView> {
  @override
  Widget build(BuildContext context) {
    return ColoredBackground(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text('Account')),
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.topRight,
              begin: Alignment.bottomLeft,
              colors: [Color(0xFFE2E7FC), Color(0x22E2E7FC)],
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 64, 20, 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(children: [
                    Text('Username'),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.account_circle,
                        size: 35,
                        color: AppTheme.darkBlueColor,
                      ),
                    ),
                  ]),
                ),
                Container(
                  constraints: BoxConstraints.expand(height: 125),
                  decoration: BoxDecoration(
                    color: Color(0xFFCFEBD7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Premium Access',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF00AC06),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '27 days left',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30),
                              ),
                            ),
                            builder: (context) => PaymentBottomSheet(),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(CupertinoIcons.capslock, size: 17),
                            SizedBox(width: 20),
                            Text('Upgrade')
                          ],
                        ),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          padding: const EdgeInsets.symmetric(
                            vertical: 13,
                            horizontal: 40,
                          ),
                          backgroundColor: Color(0xFF5DC863),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 30),
                  child: Text('Other', style: AppTheme.sectionHeaderStyle),
                ),
                PreferenceTile(title: 'Account Settings', onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: PreferenceTile(
                    title: 'Notification Settings',
                    onPressed: () => NavigationService.toPage(
                        context, AppPages.notificationsSettings),
                  ),
                ),
                PreferenceTile(
                    title: 'Language',
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return LanguageSelection();
                          });
                    }),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: PreferenceTile(
                    title: 'About Application',
                    onPressed: () =>
                        NavigationService.toPage(context, AppPages.about),
                  ),
                ),
                PreferenceTile(title: 'Contact Us', onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: PreferenceTile(
                    title: 'Logout',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              insetPadding: const EdgeInsets.all(20),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 20, 15, 10),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('Confirmation',
                                        style: AppTheme.sectionHeaderStyle),
                                    SizedBox(height: 20),
                                    Text(
                                      'Are you sure you want to logout?',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: AppTheme.darkBlueColor,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Row(children: [
                                        GestureDetector(
                                          child: Text(
                                            'Continue Meditation',
                                            style: TextStyle(
                                              color: AppTheme.darkBlueColor,
                                            ),
                                          ),
                                          onTap: Navigator.of(context).pop,
                                        ),
                                        Spacer(),
                                        TextButton(
                                          onPressed: Navigator.of(context).pop,
                                          child: Text('Logout'),
                                          style: TextButton.styleFrom(
                                            primary: Colors.white,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 30,
                                              vertical: 13,
                                            ),
                                            backgroundColor:
                                                AppTheme.darkBlueColor,
                                          ),
                                        ),
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
