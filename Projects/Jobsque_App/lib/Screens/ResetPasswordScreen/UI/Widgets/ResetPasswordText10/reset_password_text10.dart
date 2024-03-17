// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordText10 extends StatefulWidget {
  const ResetPasswordText10({super.key});

  @override
  _ResetPasswordText10State createState() => _ResetPasswordText10State();
}

class _ResetPasswordText10State extends State<ResetPasswordText10> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Password changed succesfully!',
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.sp,
        fontWeight: FontWeight.w600,
      ),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}
