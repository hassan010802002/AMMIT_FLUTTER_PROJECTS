import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weathery_news_app/Consts/Home_Sliding_Consts/Colors/Home_Sliding_Colors.dart';
import 'package:weathery_news_app/Consts/Home_Sliding_Consts/Texts/Home_Sliding_Texts.dart';

class Home_Sliding_Styles{
  static final style1 = BoxDecoration(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(45.0.sp),
    ),
    gradient: const LinearGradient(
      colors: <Color>[
        Home_Sliding_Colors.color1,
        Home_Sliding_Colors.color2,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
  static final style2 = BoxDecoration(
    color: Home_Sliding_Colors.color3,
    borderRadius: BorderRadius.circular(12.0),
  );
  static final style3 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: Home_Sliding_Colors.color4,
    fontFamily: Home_Sliding_Texts.textFamily,
  );
  static final style4 =TextStyle(
      fontFamily: Home_Sliding_Texts.textFamily,
      color: Home_Sliding_Colors.color10,
      fontSize: 18.sp,
      fontWeight: FontWeight.w800,
      letterSpacing: 2.w);
  static final style5 =TextStyle(
    fontFamily: Home_Sliding_Texts.textFamily,
    color: Home_Sliding_Colors.color10,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 2.w,
  );
  static final style6 =BoxDecoration(
    color: Home_Sliding_Colors.color7,
    borderRadius: BorderRadius.circular(40.0),
    border: Border.all(
      color: Home_Sliding_Colors.color9,
      width: 1.5.w,
    ),
  );
  static final carouselOptions =CarouselOptions(
    height: 150,
    scrollDirection: Axis.horizontal,
    enlargeCenterPage: false,
    initialPage: 0,
    viewportFraction: 0.2,
  );
  static final style7 =BoxDecoration(
    borderRadius: BorderRadius.circular(30.sp),
    border: Border.all(
      color: Home_Sliding_Colors.color6,
      width: 3.w,
    ),
    color: Home_Sliding_Colors.color1,
  );
  static final style8 =TextStyle(
    color: Home_Sliding_Colors.color11,
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    fontFamily: Home_Sliding_Texts.textFamily,
  );
  static final style9 =TextStyle(
    color: Home_Sliding_Colors.color10,
    letterSpacing: 3.0.w,
    fontWeight: FontWeight.w800,
    fontSize: 24.0.sp,
    fontFamily:Home_Sliding_Texts.textFamily,
  );
  static final style10 =TextStyle(
    color: Home_Sliding_Colors.color13,
    letterSpacing: 3.0.w,
    fontWeight: FontWeight.w800,
    fontSize: 24.0.sp,
    fontFamily: Home_Sliding_Texts.textFamily,
  );
  static final style11 =TextStyle(
    color: Home_Sliding_Colors.color13,
    letterSpacing: 3.0.w,
    fontWeight: FontWeight.w800,
    fontSize: 36.0.sp,
    fontFamily: Home_Sliding_Texts.textFamily,
  );
  static final style12 =TextStyle(
    color: Home_Sliding_Colors.color13,
    letterSpacing: 3.0.w,
    fontWeight: FontWeight.w800,
    fontSize: 16.0.sp,
    fontFamily: Home_Sliding_Texts.textFamily,
  );
  static final style13 =TextStyle(
    color: Home_Sliding_Colors.color11,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 2.0.w,
    fontFamily: Home_Sliding_Texts.textFamily,
  );
  static final style14 =TextStyle(
    color: Home_Sliding_Colors.color10,
    letterSpacing: 3.0.w,
    fontWeight: FontWeight.w800,
    fontSize: 14.0,
    fontFamily: Home_Sliding_Texts.textFamily,
  );
}