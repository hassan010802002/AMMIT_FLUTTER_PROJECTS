import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobApplyUploadCvTextWidget extends StatefulWidget {
  const JobApplyUploadCvTextWidget({super.key});

  @override
  _JobApplyUploadCvTextWidgetState createState() => _JobApplyUploadCvTextWidgetState();
}

class _JobApplyUploadCvTextWidgetState extends State<JobApplyUploadCvTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Upload CV*',
      style: TextStyle(
        color: const Color(0xff111827),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/20.0.sp,
        fontWeight: FontWeight.w600,
        fontFamily: TextFontFamily,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
