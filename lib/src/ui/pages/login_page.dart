import 'dart:convert';
import 'dart:io';

import 'package:easy_meditation/src/base/assets.dart';
import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/base/pages.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/models/register_request.dart';
import 'package:easy_meditation/src/models/sign_in_request.dart';
import 'package:easy_meditation/src/service/auth_service.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';
import 'package:easy_meditation/src/service/ui/lazy_task_service.dart';
import 'package:easy_meditation/src/service/ui/modal_services.dart';
import 'package:easy_meditation/src/service/ui/navigation_service.dart';
import 'package:easy_meditation/src/ui/views/imaged_view.dart';
import 'package:easy_meditation/src/ui/widgets/text_field.dart';
import 'package:easy_meditation/src/utils/input_validators.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignInPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final request = SignInRequest();

  SignInPage() {
    AppData().fuse();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 7;

    return Scaffold(
      body: ImagedView(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(children: [
              SizedBox(height: height / 1.5),
              Text(
                'Sign in',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: height),
              AppTextField(
                label: 'Email',
                validator: InputValidators.required,
                onSaved: (val) => request.username = val,
                prefixIcon: Icon(Icons.email, color: Colors.white),
              ),
              SizedBox(height: 20),
              AppTextField(
                label: 'Password',
                validator: InputValidators.required,
                onSaved: (val) => request.password = val,
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
                onPressed: () async {
                  if (formKey.currentState.validate()) {
                    formKey.currentState.save();

                    await LazyTaskService.execute(context, () async {
                      var response = await http.post(
                        Uri.parse('$apiUrl/auth/sign-in'),
                        body: jsonEncode(request.toJson()),
                      );
                      if (response.statusCode == 401) {
                        print('here');
                        ModalService.scaffoldMessengerKey.currentState
                            .showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            content: Text('Username or Password is incorrect.'),
                          ),
                        );
                        return;
                      } else if (response.statusCode == 500) {
                        ModalService.scaffoldMessengerKey.currentState
                            .showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            content: Text('There is some error at server side.'),
                          ),
                        );
                        return;
                      }

                      var data = jsonDecode(response.body)['access_token'];
                      AppData().accessToken = data;

                      response = await http.get(Uri.parse('$apiUrl/auth/profile'));
                      data = jsonDecode(response.body);
                      if (data.containsKey('user'))
                        AppData().saveUser(User.fromJson(data['user']));
                      if (data.containsKey('favorites'))
                        AppData.favorites.addAll(data['favorites']);
                    });

                    if (AppData.user != null) {
                      if (AppData.user.scope.contains(2)) {
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil('/', (_) => false);
                      } else {
                        AppData()
                          ..deleteUser()
                          ..accessToken = null;
                        ModalService.scaffoldMessengerKey.currentState
                            .showSnackBar(SnackBar(
                          content: Text('This User is not a valid customer.'),
                        ));
                      }
                    }
                  }
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  primary: AppTheme.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: Size.fromHeight(55),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'OR SIGN UP WITH',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () async {
                      await SocialLoginService.facebookAuth((result) async {
                        SocialLoginService.signInOrRegister(context, result);
                      });
                    },
                    child: Container(
                      width: 55,
                      height: 55,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF7583CA),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(Assets.facebookIcon),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await SocialLoginService.googleAuth((result) {
                        SocialLoginService.signInOrRegister(context, result);
                      });
                    },
                    child: Container(
                      width: 55,
                      height: 55,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(Assets.googleIcon),
                        ),
                      ),
                    ),
                  ),
                  if (Platform.isIOS)
                    Container(
                      width: 55,
                      height: 55,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ]),
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        height: 28,
        padding: const EdgeInsets.only(bottom: 8),
        child: Center(
          child: Text.rich(
            TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: '  Sign up',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      NavigationService.toPage(context, AppPages.signUp);
                    },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
