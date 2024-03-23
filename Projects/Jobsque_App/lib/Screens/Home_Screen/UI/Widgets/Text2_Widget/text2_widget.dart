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
      'Recent Job',
      textAlign: TextAlign.start,
      softWrap: true,
      style: TextStyle(
        color: const Color(0xff111827),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
