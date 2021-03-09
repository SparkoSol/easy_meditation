import 'package:easy_meditation/src/base/pages.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/service/ui/navigation_service.dart';
import 'package:easy_meditation/src/ui/views/imaged_view.dart';
import 'package:easy_meditation/src/ui/widgets/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImagedView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Spacer(flex: 2),
            Text(
              'Sign in',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Spacer(flex: 3),
            AppTextField(
              label: 'Email',
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            AppTextField(
              label: 'Password',
              prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text('Forgot password?'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              child: Text('LOGIN', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                primary: AppTheme.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                minimumSize: Size.fromHeight(55),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('OR SIGN UP WITH', style: TextStyle(color: Colors.grey.shade700)),
            ),
            Row(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                  BoxDecoration(color: Color(0xFF7583CA), shape: BoxShape.circle),
                ),
                Container(
                  width: 55,
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                ),
                Container(
                  width: 55,
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                  BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),

            Spacer(flex: 2),
            Text.rich(
              TextSpan(
                text: "Don't have an account?",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                children: [
                  TextSpan(
                    text: '  Sign up',
                    recognizer: TapGestureRecognizer()..onTap = () {
                      NavigationService.toPage(context, AppPages.signUp);
                    },
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
