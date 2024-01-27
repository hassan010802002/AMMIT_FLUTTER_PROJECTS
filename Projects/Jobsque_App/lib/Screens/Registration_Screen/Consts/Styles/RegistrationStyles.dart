// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/Colors/RegistrationColors.dart';

import '../../../../Config/AppConfig.dart';
import '../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../Controller/registration_cubit.dart';

class RegistrationStyles {
  static final buttonStyle1 = ButtonStyle(
    alignment: Alignment.center,
    visualDensity: VisualDensity.comfortable,
    padding: MaterialStatePropertyAll(EdgeInsets.all(10.0.sp)),
    iconSize: MaterialStatePropertyAll(35.0.sp),
  );
  static ButtonStyle Function(BuildContext context) buttonStyle2 = (context) => ButtonStyle(
        elevation: const MaterialStatePropertyAll(0.0),
        backgroundColor: const MaterialStatePropertyAll(RegistrationColors.whiteColor),
        fixedSize: MaterialStatePropertyAll(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.5.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h),
        ),
        padding: MaterialStatePropertyAll(EdgeInsets.all(15.0.sp)),
        visualDensity: VisualDensity.comfortable,
        alignment: Alignment.center,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0.sp),
            side: BorderSide(
              color: RegistrationColors.color1,
              width: 2.0.w,
            ),
          ),
        ),
      );
  static ButtonStyle Function(BuildContext context) buttonStyle3 = (context) => ButtonStyle(
        elevation: const MaterialStatePropertyAll(0.0),
        backgroundColor: const MaterialStatePropertyAll(RegistrationColors.whiteColor),
        fixedSize:
            MaterialStatePropertyAll(Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.5.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h)),
        padding: MaterialStatePropertyAll(EdgeInsets.all(15.0.sp)),
        visualDensity: VisualDensity.comfortable,
        alignment: Alignment.center,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0.sp),
            side: BorderSide(
              color: RegistrationColors.color1,
              width: 2.0.w,
            ),
          ),
        ),
      );
  static ButtonStyle Function(BuildContext context) buttonStyle4 = (context) => ButtonStyle(
        visualDensity: VisualDensity.comfortable,
        fixedSize: MaterialStatePropertyAll(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.0.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.h),
        ),
      );

  static TextStyle style1(BuildContext context) => TextStyle(
        color: RegistrationColors.color2,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.w,
      );

  static TextStyle style2(BuildContext context) => TextStyle(
        color: RegistrationColors.color4,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w400,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
      );

  static TextStyle style3(BuildContext context) => TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.w,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
        color: RegistrationColors.color5,
      );

  static TextStyle style4(BuildContext context) => TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.w,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
        color: RegistrationColors.color5,
      );

  static TextStyle style5(BuildContext context) => TextStyle(
        color: RegistrationColors.color3,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.w,
      );

  static TextStyle style6(BuildContext context) => TextStyle(
        color: RegistrationColors.color4,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w400,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
      );

  static TextStyle style7(BuildContext context, RegistrationState state) => TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
        color: state is UserEntranceState || state is CorrectUserPasswordLength || state is WrongUserPasswordLength
            ? RegistrationColors.whiteColor
            : RegistrationColors.color2,
      );

  static TextStyle style8(BuildContext context) => TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.w,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
        color: RegistrationColors.color4,
      );

  static TextStyle style9(BuildContext context) => TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.sp,
        fontWeight: FontWeight.w600,
        fontFamily: TextFontFamily,
        color: RegistrationColors.color7,
      );

  static TextStyle style10(BuildContext context) => TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontWeight: FontWeight.w400,
        fontFamily: TextFontFamily,
        color: RegistrationColors.color2,
      );

  static TextStyle style11(BuildContext context, RegistrationState state) => TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontWeight: FontWeight.w400,
        fontFamily: TextFontFamily,
        color: state is CorrectUserPasswordLength
            ? RegistrationColors.color8
            : state is WrongUserPasswordLength
                ? RegistrationColors.color6
                : RegistrationColors.color4,
      );

  static TextStyle style12(BuildContext context) => TextStyle(
        color: RegistrationColors.color4,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w400,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
      );
}
