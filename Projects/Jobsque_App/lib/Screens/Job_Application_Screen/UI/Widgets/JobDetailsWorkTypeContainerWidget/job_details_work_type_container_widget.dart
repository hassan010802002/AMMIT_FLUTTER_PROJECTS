// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobDetailsWorkTypeContainerWidget extends StatefulWidget {
  const JobDetailsWorkTypeContainerWidget({Key? key}) : super(key: key);

  @override
  _JobDetailsWorkTypeContainerWidgetState createState() => _JobDetailsWorkTypeContainerWidgetState();
}

class _JobDetailsWorkTypeContainerWidgetState extends State<JobDetailsWorkTypeContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.h,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.2.w,
      decoration: BoxDecoration(
        color: const Color(0xffD6E4FF),
        borderRadius: BorderRadius.circular(25.0.sp),
      ),
      child: Center(
        child: Text(
          "Remote",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: TextFontFamily,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
            color: const Color(0xff3366FF),
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
