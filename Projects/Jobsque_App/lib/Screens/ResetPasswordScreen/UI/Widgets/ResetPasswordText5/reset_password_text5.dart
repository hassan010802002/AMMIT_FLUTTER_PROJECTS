// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordText5 extends StatefulWidget {
  const ResetPasswordText5({super.key});

  @override
  _ResetPasswordText5State createState() => _ResetPasswordText5State();
}

class _ResetPasswordText5State extends State<ResetPasswordText5> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'We have sent a reset password to your email address.',
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color(0xff6B7280),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
