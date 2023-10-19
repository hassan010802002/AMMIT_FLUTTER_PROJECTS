// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Apple_Authentication/Apple_Authentication.dart';
import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Custom_Authentication/Custom_Authentication.dart';
import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Facebook_Authentication/Facebook_Authentication.dart';
import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Google_Authentication/Google_Authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Main_Authentication_Service {
  static final authentication = FirebaseAuth.instance;

  static Future<Future<UserCredential> Function()> get facebookAuth async => Facebook_Authentication.Facebook_SigningIn;
  static Future<Future<UserCredential> Function()> get googleAuth async => Google_Authentication.Google_SigningIn;
  static Future<Function(String? myEmail, String? myPassword)> get customAuth async => Custom_Authentication.Custom_SigningIn;
  static Future<void Function()> get appleAuth async => Apple_Authentication.Apple_SigningIn;

}
