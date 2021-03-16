import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SocialLoginService {
  static Future<void> facebookAuth(void Function(User) onComplete) async {
    final facebookLogin = FacebookLogin();

    final authResult = await facebookLogin.logIn(["email", "public_profile"]);

    switch (authResult.status) {
      case FacebookLoginStatus.loggedIn:
        try {
          onComplete((await FirebaseAuth.instance.signInWithCredential(
                  FacebookAuthProvider.credential(
                      authResult.accessToken.token)))
              .user);
        } on FirebaseException catch (e) {
          throw (e.message);
        }
        break;
      case FacebookLoginStatus.cancelledByUser:
        break;
      case FacebookLoginStatus.error:
        print(authResult.errorMessage);
        onComplete(null);
        throw (authResult.errorMessage);
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
}
