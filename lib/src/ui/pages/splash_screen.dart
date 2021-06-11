import 'dart:convert';

// import 'package:connectivity/connectivity.dart';
import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/models/transaction.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';
import 'package:easy_meditation/src/service/ui/notifications_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController controller;

  Animation<double> scale1;
  Animation<double> scale2;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2500),
    );

    scale1 = Tween<double>(
      end: .85,
      begin: 1,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(0, 0.4, curve: Curves.ease),
    ));

    scale2 = Tween<double>(
      begin: .57,
      end: .45,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(0.6, 1, curve: Curves.ease),
    ));

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          await AppData.initiate();
          await NotificationsService.initialize();

          // var result = await (Connectivity().checkConnectivity());
          // if (result == ConnectivityResult.mobile ||
          //     result == ConnectivityResult.wifi) {
          // } else {
          //   Navigator.of(context)
          //       .pushNamedAndRemoveUntil('/no-connection', (_) => false);
          //   return;
          // }

          if (AppData.user != null) {
            // print('$apiUrl/users/${AppData.user?.username}/last-transaction');
            // final response = await http.get(Uri.parse(
            //   '$apiUrl/users/${AppData.user?.username}/last-transaction',
            // ));
            // print(response.body);

            AppData().transaction = Transaction()
              ..amount = 3
              ..user = AppData.user.username
              ..createdAt = DateTime.now()
              ..requiredAt = DateTime.now().add(Duration(days: 30))
              ..nextAt = DateTime.now().add(Duration(days: 30));
            // Transaction.fromJson(jsonDecode(response.body)[0]);
          }

          if (AppData().isFirst) {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/welcome', (_) => false);
          } else {
            if (AppData.user != null) {
              Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
            } else {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/sign-in', (_) => false);
            }
          }
        }
      });

      controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, _) => Transform.scale(
          scale: scale1.value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// TODO: Fix image paths.
              Image.asset(
                'assets/images/buddi logo (1).png',
                width: MediaQuery.of(context).size.width * scale2.value,
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/Path 1574.png',
                width: MediaQuery.of(context).size.width * .57,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
