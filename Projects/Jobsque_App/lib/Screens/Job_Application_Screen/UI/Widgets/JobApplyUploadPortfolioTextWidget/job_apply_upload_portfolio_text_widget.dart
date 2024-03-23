// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobApplyUploadPortfolioTextWidget extends StatefulWidget {
  const JobApplyUploadPortfolioTextWidget({super.key});

  @override
  _JobApplyUploadPortfolioTextWidgetState createState() => _JobApplyUploadPortfolioTextWidgetState();
}

class _JobApplyUploadPortfolioTextWidgetState extends State<JobApplyUploadPortfolioTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Upload Portfolio',
      style: TextStyle(
        color: const Color(0xff111827),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontWeight: FontWeight.w700,
        fontFamily: TextFontFamily,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
