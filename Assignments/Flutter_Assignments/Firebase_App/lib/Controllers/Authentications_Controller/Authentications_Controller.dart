// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:firebase_app/Screens/Home_Screen/Home_Screen.dart';
import 'package:firebase_app/Screens/Registeration_Screen/Registeration_Screen.dart';
import 'package:firebase_app/Services/Authentications_Services/Authentications_Services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Authentications_Controller extends GetxController{
  final userNameController = TextEditingController();
  final passwordNameController = TextEditingController();

  void SigningIn(){
    Authentications_Services.SignIn_Authentication(userNameController.text, passwordNameController.text);
  }
  void SigningUp(){
    Get.to(const MyRegisteration());
  }
}