// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordScreenText2 extends StatefulWidget {
  const ResetPasswordScreenText2({super.key});

  @override
  _ResetPasswordScreenText2State createState() => _ResetPasswordScreenText2State();
}

class _ResetPasswordScreenText2State extends State<ResetPasswordScreenText2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter the email address you used when\nyou joined and we’ll send you instructions\nto reset your password.',
      style: TextStyle(
        color: const Color(0xff6B7280),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontWeight: FontWeight.w600,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
