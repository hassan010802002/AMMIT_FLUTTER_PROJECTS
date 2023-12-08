// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class Text3Widget extends StatefulWidget {
  const Text3Widget({Key? key}) : super(key: key);

  @override
  _Text3WidgetState createState() => _Text3WidgetState();
}

class _Text3WidgetState extends State<Text3Widget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Select the country you want for your job',
      textAlign: TextAlign.justify,
      softWrap: true,
      style: TextStyle(
        color: const Color(0xff737379),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/23.0.sp,
        fontWeight: FontWeight.w400,
        fontFamily: TextFontFamily,
      ),
    );
  }
}
