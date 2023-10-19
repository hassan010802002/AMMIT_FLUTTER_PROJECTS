// ignore_for_file: camel_case_types, prefer_function_declarations_over_variables

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/Colors/OnBroading_Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBroading_Styles {
  static const containerDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: <Color>[
        OnBroading_Colors.color1,
        OnBroading_Colors.color2,
        OnBroading_Colors.color3,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      tileMode: TileMode.clamp,
    ),
  );
  static TextStyle? textStyle1 (BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: "Circular Std",
      color: OnBroading_Colors.color5,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.w,
    );
  }
  static TextStyle? textStyle2 (BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: "Circular Std",
      color: OnBroading_Colors.color6,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.w,
    );
  }

  static final style3 = MaterialStatePropertyAll(
    RoundedRectangleBorder(
      side: BorderSide(
        color: OnBroading_Colors.color7,
        strokeAlign: BorderSide.strokeAlignInside,
        width: 1.5.w,
      ),
      borderRadius: BorderRadius.circular(20.0.sp),
    ),
  );

  static TextStyle? textStyle4 (BuildContext context) {
    return TextStyle(
      color: OnBroading_Colors.color9,
      fontFamily: "Caros",
      fontWeight: FontWeight.w600,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/20.0.w,
    );
  }
  static TextStyle? textStyle5 (BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: "Circular Std",
      color: OnBroading_Colors.color6,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.w,
    );
  }
  static TextStyle? textStyle6 (BuildContext context) {
    return TextStyle(
      fontWeight:FontWeight.w600,
      fontFamily: "Caros",
      color: OnBroading_Colors.color6,
      fontSize: MediaQuery_Size_Helper.MAX_HEIGHT(context)!/14.w,
    );
  }
  static TextStyle? textStyle7 (BuildContext context) {
    return TextStyle(
      fontWeight:FontWeight.w400,
      fontFamily: "Circular Std",
      color: OnBroading_Colors.color5,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/22.0.w,
    );
  }
  static TextStyle? textStyle8 (BuildContext context) {
    return TextStyle(
      fontFamily: "Circular Std",
      fontWeight: FontWeight.w600,
      color: OnBroading_Colors.color6,
      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/ 25.0.w,
    );
  }
}
