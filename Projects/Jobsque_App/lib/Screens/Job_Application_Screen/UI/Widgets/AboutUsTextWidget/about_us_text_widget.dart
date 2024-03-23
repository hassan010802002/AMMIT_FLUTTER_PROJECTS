// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class AboutUsTextWidget extends StatefulWidget {
  const AboutUsTextWidget({super.key});

  @override
  _AboutUsTextWidgetState createState() => _AboutUsTextWidgetState();
}

class _AboutUsTextWidgetState extends State<AboutUsTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'About Company',
      textAlign: TextAlign.start,
      softWrap: true,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
      ),
    );
  }
}
