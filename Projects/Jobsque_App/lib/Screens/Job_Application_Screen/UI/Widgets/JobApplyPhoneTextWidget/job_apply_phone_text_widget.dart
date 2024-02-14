// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobApplyPhoneTextWidget extends StatefulWidget {
  const JobApplyPhoneTextWidget({super.key});

  @override
  _JobApplyPhoneTextWidgetState createState() => _JobApplyPhoneTextWidgetState();
}

class _JobApplyPhoneTextWidgetState extends State<JobApplyPhoneTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'No.Hand-phone*',
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
