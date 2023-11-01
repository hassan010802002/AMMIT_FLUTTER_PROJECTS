// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';

class Custom_Registeration{
  static final currentAuth = FirebaseAuth.instance;

  static Future<UserCredential> custom_Registeration(String? myEmail, String? myPassword) async {
    try {
      final UserCredential currentUser = await currentAuth.createUserWithEmailAndPassword(email: myEmail!, password: myPassword!);
      print("User: ${currentUser.user!.email} and with ID: ${currentUser.user!.uid} SignedIn");
      return currentUser;
    } on Exception catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}