import 'package:easy_meditation/src/ui/modals/notifications_management.dart';
import 'package:easy_meditation/src/ui/modals/payment_bottom_sheet.dart';
import 'package:easy_meditation/src/ui/pages/about_us_page.dart';
import 'package:easy_meditation/src/ui/pages/home_page.dart';
import 'package:easy_meditation/src/ui/pages/login_page.dart';
import 'package:easy_meditation/src/ui/pages/register_page.dart';
import 'package:easy_meditation/src/ui/pages/splash_screen.dart';
import 'package:easy_meditation/src/ui/pages/welcome_page.dart';
import 'package:easy_meditation/src/ui/views/preferences_view.dart';
import 'package:flutter/widgets.dart';

///
class AppPage {
  final String route;
  const AppPage._(this.route);
}

///
abstract class AppPages {
  static final routes = <String, WidgetBuilder>{
    home.route: (context) => HomePage(),
    about.route: (context) => AboutUsPage(),
    signIn.route: (context) => SignInPage(),
    signUp.route: (context) => RegisterPage(),
    splash.route: (context) => SplashScreen(),
    temp.route: (context) => PreferencesView(),
    welcome.route: (context) => WelcomePage(),
    notificationsSettings.route: (context) => ReminderManagementPage(),
  };

  static const splash = AppPage._('/splash');
  static const temp = AppPage._('/temp');
  static const home = AppPage._('/');
  static const about = AppPage._('/about');
  static const signIn = AppPage._('/sign-in');
  static const signUp = AppPage._('/sign-up');
  static const welcome = AppPage._('/welcome');
  static const notificationsSettings = AppPage._('/notification-settings');
}