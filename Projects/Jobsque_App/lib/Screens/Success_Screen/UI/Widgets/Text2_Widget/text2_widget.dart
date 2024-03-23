// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class Text2Widget extends StatefulWidget {
  const Text2Widget({super.key});

  @override
  _Text2WidgetState createState() => _Text2WidgetState();
}

class _Text2WidgetState extends State<Text2Widget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'We have customized feeds according to your preferences',
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
        color: const Color(0xff6B7280),
      ),
    );
  }
}
