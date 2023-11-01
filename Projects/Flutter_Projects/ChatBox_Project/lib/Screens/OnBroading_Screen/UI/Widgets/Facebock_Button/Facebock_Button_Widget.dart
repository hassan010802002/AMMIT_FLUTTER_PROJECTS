// ignore_for_file: camel_case_types, must_be_immutable

import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Controller/OnBroading_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:sign_button/sign_button.dart';

class Facebock_Button_Widget extends StatefulWidget {
  OnBroading_Controller controller = Get.put(OnBroading_Controller());

  Facebock_Button_Widget({super.key});

  @override
  State<Facebock_Button_Widget> createState() => _Facebock_Button_Widget_State();
}

class _Facebock_Button_Widget_State extends State<Facebock_Button_Widget> {
  @override
  Widget build(BuildContext context) {
    return SignInButton.mini(
      buttonSize: ButtonSize.large,
      padding: 12.0,
      onPressed: (){
        widget.controller.Facebook_SignIn(context , "Successful Facebook LogIn" , errorMessage: "Facebook LogIn Failure");
      },
      btnColor: OnBroading_Consts.color4,
      buttonType: ButtonType.facebook,
    );
  }
}
