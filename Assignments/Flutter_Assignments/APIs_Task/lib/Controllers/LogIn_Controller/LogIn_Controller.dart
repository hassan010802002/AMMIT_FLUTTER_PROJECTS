import 'package:application_4/Consts/LogIn_Consts/LogIn_Consts.dart';
import 'package:application_4/Services/LogIn_Services/LogIn_Services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogIn_Controller extends GetxController{
  final userNameController = TextEditingController();
  final passwordNameController = TextEditingController();

  logIn_Authurization(BuildContext context) async{
    await LogIn_Services.Post_API_Data(context , LogIn_Consts.baseURL, userNameController.text, passwordNameController.text);
  }
}