// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordText9 extends StatefulWidget {
  const ResetPasswordText9({super.key});

  @override
  _ResetPasswordText9State createState() => _ResetPasswordText9State();
}

class _ResetPasswordText9State extends State<ResetPasswordText9> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Both password must match',
      style: TextStyle(
        color: const Color(0xff9CA3AF),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontWeight: FontWeight.w600,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
