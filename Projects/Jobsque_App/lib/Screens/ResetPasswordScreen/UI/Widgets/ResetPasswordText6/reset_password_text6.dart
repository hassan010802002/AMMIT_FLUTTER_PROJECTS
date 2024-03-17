// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordText6 extends StatefulWidget {
  const ResetPasswordText6({super.key});

  @override
  _ResetPasswordText6State createState() => _ResetPasswordText6State();
}

class _ResetPasswordText6State extends State<ResetPasswordText6> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Create new password',
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
