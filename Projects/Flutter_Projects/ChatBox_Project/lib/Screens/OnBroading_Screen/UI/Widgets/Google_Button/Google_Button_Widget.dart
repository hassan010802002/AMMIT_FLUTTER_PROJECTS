// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Controller/OnBroading_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_button/sign_button.dart';

class Google_Button_Widget extends StatefulWidget {
  OnBroading_Controller controller = Get.put(OnBroading_Controller());

  Google_Button_Widget({super.key});

  @override
  State<Google_Button_Widget> createState() => _Google_Button_Widget_State();
}

class _Google_Button_Widget_State extends State<Google_Button_Widget> {

  @override
  Widget build(BuildContext context) {
    return SignInButton.mini(
      buttonSize: ButtonSize.large,
      padding: 12.0,
      onPressed: (){
        widget.controller.Google_SignIn(context , "Successful Google LogIn" , errorMessage: "Google LogIn Failure");
      },
      btnColor: OnBroading_Consts.color4,
      buttonType: ButtonType.google,
    );
  }
}
