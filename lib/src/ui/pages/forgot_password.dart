import 'dart:convert';

import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';
import 'package:easy_meditation/src/service/ui/lazy_task_service.dart';
import 'package:easy_meditation/src/service/ui/modal_services.dart';
import 'package:easy_meditation/src/ui/views/imaged_view.dart';
import 'package:easy_meditation/src/ui/widgets/text_field.dart';
import 'package:easy_meditation/src/utils/input_validators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var email = '';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 7;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: CupertinoNavigationBar(
        backgroundColor: Colors.transparent,
        border: Border.all(color: Colors.transparent),
      ),
      body: ImagedView(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(children: [
              SizedBox(height: height),
              Text(
                'Forget Password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: height * 1.7),
              AppTextField(
                label: 'Email',
                onSaved: (val) => email = val,
                validator: InputValidators.multiple([
                  InputValidators.required,
                  InputValidators.email,
                ]),
                prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () async {
                    if (formKey.currentState.validate()) {
                      formKey.currentState.save();
                      FocusScope.of(context).unfocus();

                      var flag = false;
                      await LazyTaskService.execute(context, () async {
                        try {
                          final response = await http.post(
                              Uri.parse('$apiUrl/users/forgot-password'),
                              body: jsonEncode({'email': email}),
                              headers: {'content-type': 'application/json'});
                          flag = true;
                        } catch (e) {}
                      });

                      if (flag) {
                        ModalService.scaffoldMessengerKey.currentState
                            .showSnackBar(SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: Text('An email has been sent to you'),
                        ));
                      } else {
                        ModalService.scaffoldMessengerKey.currentState
                            .showSnackBar(SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: Text('Some Error Occurred'),
                        ));
                      }
                    }
                  },
                  child: Text(
                    'SEND EMAIL',
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
              ),
              SizedBox(height: height * 2),
            ]),
          ),
        ),
      ),
    );
  }
}
