// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';


class JobSalaryUnitText extends StatefulWidget {
  final int? index;
  const JobSalaryUnitText({Key? key, required this.index}) : super(key: key);

  @override
  _JobSalaryUnitTextState createState() => _JobSalaryUnitTextState();
}

class _JobSalaryUnitTextState extends State<JobSalaryUnitText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "K/Month",
      textAlign: TextAlign.start,
      softWrap: true,
      style: TextStyle(
        color: (widget.index! % 2) == 0? Colors.white.withOpacity(0.5) : const Color(0xff111827),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
