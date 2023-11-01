// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Screens/Home_Screen/Home_Screen.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/LogIn_Screen.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/SignUp_Screen.dart';
import 'package:flutter/material.dart';

class Bottom_NavBar_Screens{
  Bottom_NavBar_Screens();

  static List<Widget> NavBar_Screens(){
    return <Widget> [
      const MyHome(),
      const MySignUp(),
    ];
  }

}