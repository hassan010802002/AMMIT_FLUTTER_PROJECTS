// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class AppliedJobsScreenTitleTextWidget extends StatefulWidget {
  const AppliedJobsScreenTitleTextWidget({super.key});

  @override
  _AppliedJobsScreenTitleTextWidgetState createState() => _AppliedJobsScreenTitleTextWidgetState();
}

class _AppliedJobsScreenTitleTextWidgetState extends State<AppliedJobsScreenTitleTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Applied Job',
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.sp,
        fontWeight: FontWeight.w800,
      ),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}
