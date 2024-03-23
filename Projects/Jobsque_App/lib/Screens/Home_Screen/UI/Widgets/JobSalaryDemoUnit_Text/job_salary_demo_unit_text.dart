// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobSalaryDemoUnitText extends StatefulWidget {
  const JobSalaryDemoUnitText({super.key});

  @override
  _JobSalaryDemoUnitTextState createState() => _JobSalaryDemoUnitTextState();
}

class _JobSalaryDemoUnitTextState extends State<JobSalaryDemoUnitText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "K/Month",
      textAlign: TextAlign.start,
      softWrap: true,
      style: TextStyle(
        color: const Color(0xff6B7280),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
