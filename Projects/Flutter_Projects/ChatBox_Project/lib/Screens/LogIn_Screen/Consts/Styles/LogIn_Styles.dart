// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/Consts/Colors/LogIn_Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogIn_Styles{
  static TextStyle textStyle1(BuildContext context){
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: "Circular Std",
      color: LogIn_Colors.color4,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.w,
    );
  }

  static TextStyle textStyle2(BuildContext context){
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: "Circular Std",
      color: LogIn_Colors.color3,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.w,
    );
  }

  static TextStyle textStyle3(BuildContext context){
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: "Caros",
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.w,
      color: LogIn_Colors.color2,
    );
  }

  static TextStyle textStyle4(BuildContext context){
    return TextStyle(
      color: LogIn_Colors.color1,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/20.0.w,
      fontWeight: FontWeight.w600,
      fontFamily: "Caros",
    );
  }

  static TextStyle textStyle5(BuildContext context){
    return TextStyle(
      color: LogIn_Colors.color4,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/28.0.w,
      fontWeight: FontWeight.w400,
      fontFamily: "Circular Std",
    );
  }
}