import 'package:easy_meditation/src/base/pages.dart';
import 'package:flutter/cupertino.dart';

abstract class NavigationService {
  static Future<dynamic> toPage(BuildContext context, AppPage page) {
    return Navigator.of(context).pushNamed(page.route);
  }
}