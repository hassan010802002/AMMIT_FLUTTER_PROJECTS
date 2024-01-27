// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/Consts/Colors/OnBoardingColors.dart';
import '../../../../Config/AppConfig.dart';
import '../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class OnBoardingStyles {
  static TextStyle style1(BuildContext context) => TextStyle(
        color: OnBoardingColors.color2,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.w,
      );

  static TextStyle style2(BuildContext context) => TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.w,
        fontWeight: FontWeight.w400,
        fontFamily: TextFontFamily,
        color: OnBoardingColors.color3,
      );
}
