// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:firebase_auth/firebase_auth.dart';

class Authentications_Services{
  static final authentication = FirebaseAuth.instance;

  static void SignIn_Authentication(String? myEmail , String? myPassword)async{
    final UserCredential currentUser = await authentication.signInWithEmailAndPassword(email: myEmail!, password: myPassword!);
    print("User: ${currentUser.user!.email} and with ID: ${currentUser.user!.uid} SignedIn");
  }
}