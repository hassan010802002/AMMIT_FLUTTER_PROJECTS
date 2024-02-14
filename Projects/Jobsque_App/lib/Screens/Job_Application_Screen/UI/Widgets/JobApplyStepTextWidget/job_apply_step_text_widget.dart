import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobApplyStepTextWidget extends StatefulWidget {

  const JobApplyStepTextWidget({super.key});

  @override
  _JobApplyStepTextWidgetState createState() => _JobApplyStepTextWidgetState();
}

class _JobApplyStepTextWidgetState extends State<JobApplyStepTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Fill in your bio data correctly',
      textAlign: TextAlign.start,
      softWrap: true,
      style: TextStyle(
        color: const Color(0xff6B7280),
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/24.0.sp,
        fontFamily: TextFontFamily,
      ),
    );
  }
}
