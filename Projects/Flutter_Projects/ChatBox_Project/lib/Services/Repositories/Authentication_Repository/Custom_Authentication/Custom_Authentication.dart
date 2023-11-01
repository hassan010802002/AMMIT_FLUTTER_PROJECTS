// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Main_Authentication_Service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Custom_Authentication{
  static final FirebaseAuth currentAuth = FirebaseAuth.instance;

  static Future<UserCredential> Custom_SigningIn(String? myEmail, String? myPassword) async {
    try {
      final UserCredential currentUser = await currentAuth.signInWithEmailAndPassword(email: myEmail!, password: myPassword!);
      print("User: ${currentUser.user!.email} and with ID: ${currentUser.user!.uid} SignedIn");
      return currentUser;
    } on Exception catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}