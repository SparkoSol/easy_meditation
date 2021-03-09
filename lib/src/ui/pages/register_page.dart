import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/views/imaged_view.dart';
import 'package:easy_meditation/src/ui/widgets/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImagedView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Spacer(flex: 2),
            Text(
              'Create user account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Spacer(flex: 3),
            AppTextField(
              label: 'Full Name',
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            AppTextField(
              label: 'Email',
              prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
            ),
            SizedBox(height: 20),
            AppTextField(
              label: 'Password',
              prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(children: [
                Text.rich(TextSpan(text: 'I have read the ', children: [
                  TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(color: Colors.blue))
                ])),
                Spacer(),
                Checkbox(
                    value: flag, onChanged: (val) => setState(() => flag = val))
              ]),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'REGISTER',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                primary: AppTheme.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
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
                text: 'Already have an account?',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                children: [
                  TextSpan(
                    text: '  Sign in',
                    recognizer: TapGestureRecognizer()
                      ..onTap = Navigator.of(context).pop,
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
