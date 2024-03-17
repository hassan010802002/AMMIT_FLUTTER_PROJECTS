// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordText11 extends StatefulWidget {
  const ResetPasswordText11({super.key});

  @override
  _ResetPasswordText11State createState() => _ResetPasswordText11State();
}

class _ResetPasswordText11State extends State<ResetPasswordText11> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Your password has been changed successfully, \nwe will let you know if there are more problems \nwith your account',
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color(0xff6B7280),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
