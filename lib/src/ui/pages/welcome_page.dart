import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return LocalizedView(
      child: Scaffold(
        appBar: AppBar(),
        body: PageView(
          controller: controller,
          children: <Widget>[],
        ),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: Row(
            children: <Widget>[
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
