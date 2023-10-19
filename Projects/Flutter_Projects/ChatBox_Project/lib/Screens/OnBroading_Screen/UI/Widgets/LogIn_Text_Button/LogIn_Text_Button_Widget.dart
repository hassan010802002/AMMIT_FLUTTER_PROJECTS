// ignore_for_file: camel_case_types

import 'package:chatbox_project/Routes/MyPages/MyPages.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Controller/OnBroading_Controller.dart';
import 'package:flutter/material.dart';

class LogIn_Text_Button extends StatefulWidget {
  const LogIn_Text_Button({super.key});

  @override
  State<LogIn_Text_Button> createState() => _LogIn_Text_Button_State();
}

class _LogIn_Text_Button_State extends State<LogIn_Text_Button> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        OnBroading_Controller().Navigation(MyPages.logInScreen);
      },
      child: Text(
        OnBroading_Consts.text4,
        softWrap: true,
        textAlign: TextAlign.center,
        style: OnBroading_Consts.textStyle5(context),
      ),
    );
  }
}
