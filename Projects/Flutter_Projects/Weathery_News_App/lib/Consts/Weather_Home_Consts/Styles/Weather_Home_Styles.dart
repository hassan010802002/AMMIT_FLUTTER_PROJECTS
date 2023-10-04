import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weathery_news_app/Consts/Weather_Home_Consts/Colors/Weather_Home_Colors.dart';
import 'package:weathery_news_app/Consts/Weather_Home_Consts/Texts/Weather_Home_Texts.dart';

class Weather_Home_Styles{
  static final style1 = BoxDecoration(
    borderRadius: BorderRadius.circular(12.0.spMax),
    image: const DecorationImage(
      fit: BoxFit.fill,
      filterQuality: FilterQuality.high,
      image: AssetImage(
        Weather_Home_Texts.image5,
      ),
    ),
  );
  static final style2 = TextStyle(
    color: Weather_Home_Colors.color5,
    fontSize: 50.sp,
    fontWeight: FontWeight.w600,
    fontFamily: Weather_Home_Texts.textFamily,
    letterSpacing: 3.w,
  );
  static final style3 = TextStyle(
    color: Weather_Home_Colors.color5,
    fontSize: 65.sp,
    fontWeight: FontWeight.w200,
    fontFamily: Weather_Home_Texts.textFamily,
    letterSpacing: 3.w,
  );
  static final style4 = TextStyle(
    color: Weather_Home_Colors.color6,
    fontSize: 25.sp,
    fontWeight: FontWeight.w600,
    fontFamily: Weather_Home_Texts.textFamily,
    letterSpacing: 2.w,
  );
  static final style5 = TextStyle(
    color: Weather_Home_Colors.color5,
    fontSize: 25.sp,
    fontWeight: FontWeight.w200,
    fontFamily: Weather_Home_Texts.textFamily,
    letterSpacing: 2.w,
  );
}