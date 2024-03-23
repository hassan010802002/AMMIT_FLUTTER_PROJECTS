// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobDetailsNumberOfEmployeesTextWidget extends StatefulWidget {
  const JobDetailsNumberOfEmployeesTextWidget({super.key});

  @override
  _JobDetailsNumberOfEmployeesTextWidgetState createState() => _JobDetailsNumberOfEmployeesTextWidgetState();
}

class _JobDetailsNumberOfEmployeesTextWidgetState extends State<JobDetailsNumberOfEmployeesTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '6 Employees For',
      style: TextStyle(
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
        color: const Color(0xff111827),
      ),
      textAlign: TextAlign.start,
      softWrap: true,
    );
  }
}
