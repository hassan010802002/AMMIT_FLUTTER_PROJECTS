import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobSavedTitleTextWidget extends StatefulWidget {
  const JobSavedTitleTextWidget({super.key});

  @override
  _JobSavedTitleTextWidgetState createState() => _JobSavedTitleTextWidgetState();
}

class _JobSavedTitleTextWidgetState extends State<JobSavedTitleTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Saved',
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color(0xff111827),
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/18.0.sp,
        fontFamily: TextFontFamily,
      ),
    );
  }
}
