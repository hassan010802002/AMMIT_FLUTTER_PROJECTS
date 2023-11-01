// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Apple_Authentication/Apple_Authentication.dart';
import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Custom_Authentication/Custom_Authentication.dart';
import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Facebook_Authentication/Facebook_Authentication.dart';
import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Google_Authentication/Google_Authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Main_Authentication_Service {
  static Future<UserCredential> get facebookAuth async => await Facebook_Authentication.Facebook_SigningIn();
  static Future<UserCredential> get googleAuth async =>await Google_Authentication.Google_SigningIn();
  static customAuth(String? myEmail , String? myPassword) async => Custom_Authentication.Custom_SigningIn(myEmail, myPassword);
  static  Future<UserCredential> get appleAuth async =>await Apple_Authentication.Apple_SigningIn();

}
