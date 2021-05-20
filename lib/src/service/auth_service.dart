import 'dart:convert';
import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/models/sign_in_request.dart';
import 'package:easy_meditation/src/models/card.dart' as c;
import 'package:easy_meditation/src/models/transaction.dart';
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
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class SocialLoginService {
  static Future<void> facebookAuth(void Function(User) onComplete,
      [Function onCancel]) async {
    final token = await FacebookAuth.instance.login();

    try {
      onComplete((await FirebaseAuth.instance.signInWithCredential(
              FacebookAuthProvider.credential(token.accessToken.token)))
          .user);
    } on FirebaseException catch (e) {
      ModalService.scaffoldMessengerKey.currentState
          .showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(
          e.message,
        ),
      ));
      throw e.message;
    } catch (e) {
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
      ModalService.scaffoldMessengerKey.currentState
          .showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(
          e.message,
        ),
      ));
      throw (e.message);
    }

    final credential = GoogleAuthProvider.credential(
      idToken: authentication.idToken,
      accessToken: authentication.accessToken,
    );

    onComplete(
        (await FirebaseAuth.instance.signInWithCredential(credential)).user);
  }


  static appleAuth(void Function(User) onComplete ) async {
    final appleIdCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
    final oAuthProvider = OAuthProvider('apple.com');
    final credential = oAuthProvider.credential(
      idToken: appleIdCredential.identityToken,
      accessToken: appleIdCredential.authorizationCode,
    );
    onComplete((await FirebaseAuth.instance.signInWithCredential(credential)).user);
  }

  static signInOrRegister(BuildContext context, User result) async {
    await LazyTaskService.execute(context, () async {
      final req = SignInRequest()
        ..username = result.email
        ..password = result.uid + '_easy_meditation';

      var response = await http.post(
        Uri.parse('$apiUrl/auth/sign-in'),
        body: jsonEncode(req.toJson()),
        headers: {'content-type': 'application/json'},
      );

      var data = jsonDecode(response.body)['access_token'];
      AppData().accessToken = data;

      if (response.statusCode == 401) {
        var flag = false;
        await LazyTaskService.execute(context, () async {
          final user = r.User()
            ..username = req.username
            ..password = req.password
            ..name = result.displayName ?? ''
            ..email = req.username
            ..scope = [2];

          final response = await http.post(
            Uri.parse('$apiUrl/users'),
            body: jsonEncode(user.toJson()),
            headers: {'content-type': 'application/json'},
          );

          if (response.statusCode == 500) {
            ModalService.scaffoldMessengerKey.currentState
                .showSnackBar(SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(
                'Unable to create account. This email has already been linked to another account',
              ),
            ));

            return;
          }

          flag = true;
        });

        if (!flag) return;

        final request = SignInRequest()
          ..username = result.email
          ..password = result.uid + '_easy_meditation';

        var response = await http.post(
          Uri.parse('$apiUrl/auth/sign-in'),
          body: jsonEncode(request.toJson()),
          headers: {'content-type': 'application/json'},
        );

        print(response.body);

        var data = jsonDecode(response.body)['access_token'];
        AppData().accessToken = data;
      } else if (response.statusCode == 500) {
        ModalService.scaffoldMessengerKey.currentState.showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('There is some error at server side.'),
          ),
        );
        return;
      }

      response = await http.get(Uri.parse('$apiUrl/auth/profile'),
          headers: {'authorization': 'bearer ${AppData().accessToken}'});
      data = jsonDecode(response.body);
      print(data);
      if (data.containsKey('user'))
        AppData().saveUser(r.User.fromJson(data['user']));
      if (data.containsKey('favorites'))
        AppData.favorites.addAll(data['favorites']);
      if (data.containsKey('card'))
        AppData().card = c.Card.fromJson(data['card']);
    });

    if (AppData.user != null) {
      if (AppData.user.scope.contains(2)) {
        final response = await http.get(Uri.parse(
          '$apiUrl/users/${AppData.user?.username}/last-transaction',
        ));
        print(response.body);

        AppData().transaction =
            Transaction.fromJson(jsonDecode(response.body)[0]);

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
