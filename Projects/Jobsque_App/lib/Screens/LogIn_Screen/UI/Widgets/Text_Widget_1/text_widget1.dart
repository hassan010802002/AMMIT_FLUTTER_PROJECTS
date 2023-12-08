// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class TextWidget1 extends StatefulWidget {
  const TextWidget1({Key? key}) : super(key: key);

  @override
  _TextWidget1State createState() => _TextWidget1State();
}

class _TextWidget1State extends State<TextWidget1> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Login",
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/12.0.sp,
        fontWeight: FontWeight.w600,
        fontFamily: TextFontFamily,
        color: const Color(0xff111827),
      ),
      textAlign: TextAlign.justify,
      softWrap: true,
    );
  }
}
