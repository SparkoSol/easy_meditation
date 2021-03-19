import 'dart:convert';

import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/models/sign_in_request.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';
import 'package:easy_meditation/src/service/ui/lazy_task_service.dart';
import 'package:easy_meditation/src/service/ui/modal_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:easy_meditation/src/models/register_request.dart' as r;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SocialLoginService {
  static Future<void> facebookAuth(void Function(User) onComplete,
      [Function onCancel]) async {
    final token = await FacebookAuth.instance.login();

    try {
      onComplete((await FirebaseAuth.instance.signInWithCredential(
              FacebookAuthProvider.credential(token.token)))
          .user);
    } on FirebaseException catch (e) {
      throw e.message;
    } on FacebookAuthException catch (e) {
      switch (e.errorCode) {
        case FacebookAuthErrorCode.OPERATION_IN_PROGRESS:
          print("You have a previous login operation in progress");
          break;
        case FacebookAuthErrorCode.CANCELLED:
          onCancel();
          break;
        case FacebookAuthErrorCode.FAILED:
          print("login failed");
          break;
      }
    }
  }

  static Future<void> googleAuth(void Function(User) onComplete) async {
    var authentication;
    try {
      authentication = await (await GoogleSignIn().signIn()).authentication;
    } on FirebaseException catch (e) {
      throw (e.message);
    }

    final credential = GoogleAuthProvider.credential(
      idToken: authentication.idToken,
      accessToken: authentication.accessToken,
    );

    onComplete(
        (await FirebaseAuth.instance.signInWithCredential(credential)).user);
  }

  static signInOrRegister(BuildContext context, User result) async {
    await LazyTaskService.execute(context, () async {
      final request = SignInRequest()
        ..username = result.email
        ..password = result.uid + '_easy_meditation';

      var response = await http.post(
        Uri.parse('$apiUrl/auth/sign-in'),
        body: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 401) {
        var flag = false;
        LazyTaskService.execute(context, () async {
          try {
            final user = r.User()
              ..username = request.username
              ..password = request.password
              ..name = result.displayName
              ..email = request.username;

            final response = await http.post(
              Uri.parse('$apiUrl/users'),
              body: jsonEncode(user.toJson()),
            );
          } catch (e) {
            print('User Exists');
          }

          flag = true;
        });

        if (flag) {
          final request = SignInRequest()
            ..username = result.email
            ..password = result.uid + '_easy_meditation';

          var response = await http.post(
            Uri.parse('$apiUrl/auth/sign-in'),
            body: jsonEncode(request.toJson()),
          );

          var data = jsonDecode(response.body)['access_token'];
          AppData().accessToken = data;
        }
      } else if (response.statusCode == 500) {
        ModalService.scaffoldMessengerKey.currentState.showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('There is some error at server side.'),
          ),
        );
        return;
      }

      var data;

      response = await http.get(Uri.parse('$apiUrl/auth/profile'));
      data = jsonDecode(response.body);
      if (data.containsKey('user'))
        AppData().saveUser(r.User.fromJson(data['user']));
      if (data.containsKey('favorites'))
        AppData.favorites.addAll(data['favorites']);
    });

    if (AppData.user != null) {
      if (AppData.user.scope.contains(2)) {
        Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
      } else {
        AppData()
          ..deleteUser()
          ..accessToken = null;
        ModalService.scaffoldMessengerKey.currentState.showSnackBar(SnackBar(
          content: Text('This User is not a valid customer.'),
        ));
      }
    }
  }
}
