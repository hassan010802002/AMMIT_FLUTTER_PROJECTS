// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordText7 extends StatefulWidget {
  const ResetPasswordText7({super.key});

  @override
  _ResetPasswordText7State createState() => _ResetPasswordText7State();
}

class _ResetPasswordText7State extends State<ResetPasswordText7> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Set your new password so you can login and \naccess Jobsque',
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
