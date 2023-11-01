// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Main_Authentication_Service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class Apple_Authentication{
  static final currentAuth = FirebaseAuth.instance;

  static Future<UserCredential> Apple_SigningIn() async {
    try {
      final appleProvider = AppleAuthProvider();
      if (kIsWeb) {
        return await currentAuth.signInWithPopup(appleProvider);
      } else {
        return await currentAuth.signInWithProvider(appleProvider);
      }
    } on Exception catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}