import 'package:easy_meditation/src/ui/modals/notifications_management.dart';
import 'package:flutter/material.dart';

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

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   controller.addStatusListener((status) async {
    //     if (status == AnimationStatus.completed) {
    //       await Future.delayed(Duration(milliseconds: 500), () {});
    //       Navigator.of(context).pushReplacementNamed('/welcome');
    //     }
    //   });
    //
    //   controller.forward();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return ReminderManagementPage();
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
