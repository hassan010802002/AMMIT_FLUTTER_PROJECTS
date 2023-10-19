// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:sign_button/sign_button.dart';

class Facebock_Button_Widget extends StatefulWidget {
  const Facebock_Button_Widget({super.key});

  @override
  State<Facebock_Button_Widget> createState() => _Facebock_Button_Widget_State();
}

class _Facebock_Button_Widget_State extends State<Facebock_Button_Widget> {
  @override
  Widget build(BuildContext context) {
    return SignInButton.mini(
      buttonSize: ButtonSize.large,
      padding: 12.0,
      onPressed: (){},
      btnColor: OnBroading_Consts.color4,
      buttonType: ButtonType.facebook,
    );
  }
}
