// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class FullTimeContainer extends StatefulWidget {
  final int? jobIndex;
  const FullTimeContainer({Key? key, required this.jobIndex}) : super(key: key);

  @override
  _FullTimeContainerState createState() => _FullTimeContainerState();
}

class _FullTimeContainerState extends State<FullTimeContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.h,
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.0.w,
        decoration: BoxDecoration(
          color: (widget.jobIndex! % 2) == 0? Colors.white.withOpacity(0.14) :  const Color(0xffD6E4FF) ,
          borderRadius: BorderRadius.circular(25.0.sp),
        ),
        child: Center(
          child: Text(
            "Full time",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: TextFontFamily,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
              color: (widget.jobIndex! % 2) == 0? Colors.white : const Color(0xff111827),
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
