// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ApplyViewTitleTextWidget extends StatefulWidget {
  const ApplyViewTitleTextWidget({super.key});

  @override
  _ApplyViewTitleTextWidgetState createState() => _ApplyViewTitleTextWidgetState();
}

class _ApplyViewTitleTextWidgetState extends State<ApplyViewTitleTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Apply Job',
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color(0xff111827),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/18.0.sp,
        fontWeight: FontWeight.w800,
        fontFamily: TextFontFamily,
      ),
    );
  }
}
