// ignore_for_file: library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class TextWidget2 extends StatefulWidget {
  const TextWidget2({Key? key}) : super(key: key);

  @override
  _TextWidget2State createState() => _TextWidget2State();
}

class _TextWidget2State extends State<TextWidget2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Please login to find your dream job",
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/24.0.sp,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
        color: const Color(0xff6B7280),
      ),
      textAlign: TextAlign.justify,
      softWrap: true,
    );
  }
}
