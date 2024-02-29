// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordText3 extends StatefulWidget {
  const ResetPasswordText3({super.key});

  @override
  _ResetPasswordText3State createState() => _ResetPasswordText3State();
}

class _ResetPasswordText3State extends State<ResetPasswordText3> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "You remember your password",
      softWrap: true,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/24.0.w,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
        color: const Color(0xff9CA3AF),
      ),
    );
  }
}
