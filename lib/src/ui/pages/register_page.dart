import 'dart:convert';

import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/models/register_request.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';
import 'package:easy_meditation/src/service/ui/lazy_task_service.dart';
import 'package:easy_meditation/src/service/ui/modal_services.dart';
import 'package:easy_meditation/src/ui/views/imaged_view.dart';
import 'package:easy_meditation/src/ui/widgets/text_field.dart';
import 'package:easy_meditation/src/utils/input_validators.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var flag = false;
  final user = User();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 7;

    return Scaffold(
      extendBody: true,
      body: ImagedView(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(children: [
              SizedBox(height: height / 1.5),
              Text(
                'Create user account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: height),
              AppTextField(
                label: 'Full Name',
                onSaved: (val) => user.name = val,
                validator: InputValidators.required,
                prefixIcon: Icon(Icons.email, color: Colors.white),
              ),
              SizedBox(height: 20),
              AppTextField(
                label: 'Email',
                onSaved: (val) => user.email = val,
                validator: InputValidators.required,
                prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
              ),
              SizedBox(height: 20),
              AppTextField(
                label: 'Password',
                validator: InputValidators.required,
                onSaved: (val) => user.password = val,
                prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(children: [
                  Text.rich(TextSpan(text: 'I have read the ', children: [
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(color: Colors.blue),
                    )
                  ])),
                  Spacer(),
                  Checkbox(
                    value: flag,
                    onChanged: (val) => setState(() => flag = val),
                  )
                ]),
              ),
              TextButton(
                onPressed: () {
                  if (!flag) {
                    _checkTermsAndConditions();
                    return;
                  }

                  if (formKey.currentState.validate()) {
                    formKey.currentState.save();

                    var flag = false;
                    LazyTaskService.execute(context, () async {
                      try {
                        final response = await http.post(
                          Uri.parse('$apiUrl/users'),
                          body: jsonEncode(user.toJson()),
                        );
                      } catch (e) {
                        if (e.response.statusCode == 400) {
                          ModalService.scaffoldMessengerKey.currentState
                              .showSnackBar(SnackBar(
                            behavior: SnackBarBehavior.floating,
                            content: Text('A user with same email exists'),
                          ));

                          return;
                        }
                      }

                      flag = true;
                    });

                    if (flag) Navigator.of(context).pop();
                  }
                },
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
                child: Text('OR SIGN UP WITH',
                    style: TextStyle(color: Colors.grey.shade700)),
              ),
              Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Color(0xFF7583CA), shape: BoxShape.circle),
                  ),
                  Container(
                    width: 55,
                    height: 55,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  Container(
                    width: 55,
                    height: 55,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(height: height * 2),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 28,
        padding: const EdgeInsets.only(bottom: 8),
        child: Center(
          child: Text.rich(
            TextSpan(
              text: 'Already have an account?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: '  Sign in',
                  recognizer: TapGestureRecognizer()
                    ..onTap = Navigator.of(context).pop,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _checkTermsAndConditions() {
    ModalService.scaffoldMessengerKey.currentState.showSnackBar(
      SnackBar(content: Text('Accept Terms and Conditions First!')),
    );
  }
}
