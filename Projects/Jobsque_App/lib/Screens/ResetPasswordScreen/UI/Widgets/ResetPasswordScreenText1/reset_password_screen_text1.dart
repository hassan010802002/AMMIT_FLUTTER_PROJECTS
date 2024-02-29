// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordScreenText1 extends StatefulWidget {
  const ResetPasswordScreenText1({super.key});

  @override
  _ResetPasswordScreenText1State createState() => _ResetPasswordScreenText1State();
}

class _ResetPasswordScreenText1State extends State<ResetPasswordScreenText1> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Reset Password',
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.sp,
        fontWeight: FontWeight.w600,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
