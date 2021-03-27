import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/base/pages.dart';
import 'package:easy_meditation/src/service/ui/lazy_task_service.dart';
import 'package:easy_meditation/src/service/ui/modal_services.dart';
import 'package:easy_meditation/src/service/ui/notifications_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    LazyTaskService.dialog = Dialog(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(children: [
          SizedBox(
            width: 30,
            height: 30,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation(AppTheme.primaryColor),
            ),
          ),
          SizedBox(width: 10),
          Text('Loading')
        ]),
      ),
    );

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
      initialRoute: AppPages.splash.route,
      supportedLocales: AppLocalizations.supportedLocales,
      scaffoldMessengerKey: ModalService.scaffoldMessengerKey,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
    );
  }

  @override
  void dispose() {
    AppConfig().removeListener(_rebuild);
    super.dispose();
  }
}
