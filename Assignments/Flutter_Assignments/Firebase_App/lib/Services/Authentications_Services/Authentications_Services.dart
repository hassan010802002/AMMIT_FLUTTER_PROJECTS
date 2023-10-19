// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:firebase_app/Screens/Home_Screen/Home_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Authentications_Services{
  static final authentication = FirebaseAuth.instance;

  static void SignIn_Authentication(String? myEmail , String? myPassword)async{
    try {
      final UserCredential currentUser = await authentication.signInWithEmailAndPassword(email: myEmail!, password: myPassword!);
      print("User: ${currentUser.user!.email} and with ID: ${currentUser.user!.uid} SignedIn");
      Get.to(const MyHome());
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}