import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobDetailsFixedJobTitleTextWidget extends StatefulWidget {
  const JobDetailsFixedJobTitleTextWidget({Key? key}) : super(key: key);

  @override
  _JobDetailsFixedJobTitleTextWidgetState createState() => _JobDetailsFixedJobTitleTextWidgetState();
}

class _JobDetailsFixedJobTitleTextWidgetState extends State<JobDetailsFixedJobTitleTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'UI/UX Design',
      softWrap: true,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: const Color(0xff6B7280),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/25.0.sp,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
      ),
    );
  }
}
