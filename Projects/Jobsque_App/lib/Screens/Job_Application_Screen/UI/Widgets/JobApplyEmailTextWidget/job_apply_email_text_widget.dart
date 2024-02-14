// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobApplyEmailTextWidget extends StatefulWidget {
  const JobApplyEmailTextWidget({super.key});

  @override
  _JobApplyEmailTextWidgetState createState() => _JobApplyEmailTextWidgetState();
}

class _JobApplyEmailTextWidgetState extends State<JobApplyEmailTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Email*',
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/24.0.sp,
        fontWeight: FontWeight.w600,
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
