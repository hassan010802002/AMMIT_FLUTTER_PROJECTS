// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Controller/OnBroading_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:sign_button/sign_button.dart';

class Apple_Button_Widget extends StatefulWidget {
  OnBroading_Controller controller = Get.put(OnBroading_Controller());

  Apple_Button_Widget({super.key});

  @override
  State<Apple_Button_Widget> createState() => _Apple_Button_Widget_State();
}

class _Apple_Button_Widget_State extends State<Apple_Button_Widget> {
  @override
  Widget build(BuildContext context) {
    return SignInButton.mini(
      buttonSize: ButtonSize.large,
      onPressed: (){
        widget.controller.Apple_SignIn(context , "Successful Apple LogIn" , errorMessage: "Apple LogIn Failure");
      },
      padding: 12.0,
      btnColor: OnBroading_Consts.color4,
      buttonType: ButtonType.appleDark,
    );
  }
}
