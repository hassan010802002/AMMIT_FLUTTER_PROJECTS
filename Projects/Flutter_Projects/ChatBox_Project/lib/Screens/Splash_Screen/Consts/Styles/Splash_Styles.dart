// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Splash_Screen/Consts/Splash_Consts.dart';
import 'package:chatbox_project/Screens/Splash_Screen/Consts/Texts/Splash_Texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash_Styles{
  static TextStyle? style(BuildContext context){
    return TextStyle(
      color: Splash_Consts.color1,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! * 0.15.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 3.5.w,
      fontFamily: Splash_Texts.textFamily,
    );
  }
}