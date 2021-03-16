import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/base/pages.dart';
import 'package:easy_meditation/src/service/ui/notifications_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'base/theme.dart';
import 'base/config.dart';
import 'ui/pages/home_page.dart';

class App extends StatefulWidget {
  const App._();

  /// Entry point for application.
  ///
  /// All the required services (both sync and async) must be initialized before
  /// calling [runApp].
  static Future<void> initializeAndRun() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    await AppData.initiate();
    await NotificationsService.initialize();
    SharedPreferences.setMockInitialValues({});

    return runApp(const App._());
  }

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  void _rebuild() => setState(() {});

  @override
  void initState() {
    super.initState();
    AppConfig().addListener(_rebuild);
  }

  @override
  Widget build(BuildContext context) {
    final config = AppConfig();

    return MaterialApp(
      theme: AppTheme.light,
      locale: config.locale,
      routes: AppPages.routes,
      darkTheme: AppTheme.dark,
      themeMode: config.themeMode,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
    );
  }

  @override
  void dispose() {
    AppConfig().removeListener(_rebuild);
    super.dispose();
  }
}
