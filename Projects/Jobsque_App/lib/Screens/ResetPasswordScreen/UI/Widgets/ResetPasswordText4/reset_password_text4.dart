// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordText4 extends StatefulWidget {
  const ResetPasswordText4({super.key});

  @override
  _ResetPasswordText4State createState() => _ResetPasswordText4State();
}

class _ResetPasswordText4State extends State<ResetPasswordText4> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Check your Email',
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 16.0.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
