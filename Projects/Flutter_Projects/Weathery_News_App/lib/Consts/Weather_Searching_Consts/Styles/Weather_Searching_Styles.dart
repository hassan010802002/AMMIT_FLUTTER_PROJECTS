import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weathery_news_app/Consts/Weather_Searching_Consts/Colors/Weather_Searching_Colors.dart';
import 'package:weathery_news_app/Consts/Weather_Searching_Consts/Texts/Weather_Searching_Texts.dart';

class Weather_Searching_Styles{
  static final style1 = TextStyle(
    fontFamily: Weather_Searching_Texts.fontFamilyText,
    letterSpacing: 3.5.w,
    fontWeight: FontWeight.w600,
    fontSize: 32.0.sp,
    color: Weather_Searching_Colors.color1,
  );
  static final style2 =BoxDecoration(
    borderRadius: BorderRadius.circular(15.0.spMax),
    gradient: const LinearGradient(
      colors: [
        Weather_Searching_Colors.color2,
        Weather_Searching_Colors.color4,
        Weather_Searching_Colors.color5,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
  static final style3 =TextStyle(
    fontFamily: Weather_Searching_Texts.fontFamilyText,
    fontSize: 24.sp,
    color: Weather_Searching_Colors.color7,
    letterSpacing: 3.0.w,
    fontWeight: FontWeight.w800,
  );
  static final style4 =BoxDecoration(
    borderRadius: BorderRadius.circular(20.0.sp),
    color: Weather_Searching_Colors.color8,
  );
  static final style5 =TextStyle(
    fontWeight: FontWeight.w600,
    color: Weather_Searching_Colors.color1,
    fontSize: 50.0.sp,
    fontFamily: Weather_Searching_Texts.fontFamilyText,
    letterSpacing: 3.0.w,
  );
  static final style6 =TextStyle(
    fontWeight: FontWeight.w600,
    color: Weather_Searching_Colors.color9,
    fontSize: 14.0.sp,
    fontFamily: Weather_Searching_Texts.fontFamilyText,
    letterSpacing: 2.0.w,
  );
  static final style7 =TextStyle(
    fontWeight: FontWeight.w600,
    color: Weather_Searching_Colors.color1,
    fontSize: 16.0.sp,
    fontFamily: Weather_Searching_Texts.fontFamilyText,
    letterSpacing: 2.0.w,
  );
  static final style8 =TextStyle(
    fontWeight: FontWeight.w600,
    color: Weather_Searching_Colors.color1,
    fontSize: 16.0.sp,
    fontFamily: Weather_Searching_Texts.fontFamilyText,
    letterSpacing: 2.0.w,
  );
}