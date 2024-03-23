// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobApplyBioDataTextWidget extends StatefulWidget {
  const JobApplyBioDataTextWidget({super.key});

  @override
  _JobApplyBioDataTextWidgetState createState() => _JobApplyBioDataTextWidgetState();
}

class _JobApplyBioDataTextWidgetState extends State<JobApplyBioDataTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Biodata',
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
