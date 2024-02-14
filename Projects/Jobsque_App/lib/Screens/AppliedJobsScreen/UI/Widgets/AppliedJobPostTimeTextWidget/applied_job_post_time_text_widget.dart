// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class AppliedJobPostTimeTextWidget extends StatefulWidget {
  const AppliedJobPostTimeTextWidget({super.key});

  @override
  _AppliedJobPostTimeTextWidgetState createState() => _AppliedJobPostTimeTextWidgetState();
}

class _AppliedJobPostTimeTextWidgetState extends State<AppliedJobPostTimeTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Posted 2 days ago',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
        color: const Color(0xff374151),
      ),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}
