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
    Authentications_Services.SignUp_Authentication(userNameController.text, passwordNameController.text);
  }
  void Deleting(){
    Authentications_Services.Deleting_Authentication();
  }
}