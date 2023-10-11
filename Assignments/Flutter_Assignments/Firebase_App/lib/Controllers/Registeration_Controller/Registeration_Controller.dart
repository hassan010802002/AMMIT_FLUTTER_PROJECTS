// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:firebase_app/Models/User_Token_Model/user_token.dart';
import 'package:firebase_app/Services/Registeration_Services/Registeration_Services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Registeration_Controller extends GetxController {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final userNameController = TextEditingController();
  final idController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  void SigningUp() {
    final UserModel userModel = UserModel(
      id: idController.text,
      name: nameController.text,
      phone: phoneController.text,
      userName: userNameController.text,
      password: passwordController.text,
    );
    // Registeration_Services.addUserAuth(emailController.text, passwordController.text);
    Registeration_Services.addToFireStore(model: userModel);
    // Registeration_Services.addToRealTime(model: userModel);
  }

  void Navigation(dynamic page){
    Get.to(page);
  }
}
