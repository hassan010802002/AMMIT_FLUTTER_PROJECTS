// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Main_Authentication_Service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class Facebook_Authentication{
  static final currentAuth = Main_Authentication_Service.authentication;

  static Future<UserCredential> Facebook_SigningIn() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();
      final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
      return await currentAuth.signInWithCredential(facebookAuthCredential);
    } on Exception catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}