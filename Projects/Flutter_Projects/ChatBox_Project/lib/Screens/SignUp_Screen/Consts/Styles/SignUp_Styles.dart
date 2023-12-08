// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/Consts/Colors/SignUp_Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp_Styles{
  static TextStyle textStyle1(BuildContext context){
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: "Caros",
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.w,
      color: SignUp_Colors.color2,
    );
  }

  static TextStyle textStyle2(BuildContext context){
    return TextStyle(
      color: SignUp_Colors.color1,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/20.0.w,
      fontWeight: FontWeight.w600,
      fontFamily: "Caros",
    );
  }

  static TextStyle textStyle3(BuildContext context){
    return TextStyle(
      color: SignUp_Colors.color4,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/28.0.w,
      fontWeight: FontWeight.w400,
      fontFamily: "Circular Std",
    );
  }
}