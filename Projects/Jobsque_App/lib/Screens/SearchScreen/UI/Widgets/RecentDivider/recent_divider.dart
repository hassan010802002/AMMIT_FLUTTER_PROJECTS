// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class RecentDivider extends StatefulWidget {
  const RecentDivider({super.key});

  @override
  _RecentDividerState createState() => _RecentDividerState();
}

class _RecentDividerState extends State<RecentDivider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
      decoration: BoxDecoration(
        color: const Color(0xffF4F4F5),
        border: Border.symmetric(
          horizontal: BorderSide(
            color: const Color(0xffE5E7EB),
            width: 1.5.w,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 20.0.w),
      alignment: Alignment.centerLeft,
      child: Text(
        "Recent searches",
        style: TextStyle(
          color: const Color(0xff6B7280),
          fontFamily: TextFontFamily,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
          fontWeight: FontWeight.w600,
        ),
        softWrap: true,
        textAlign: TextAlign.start,
      ),
    );
  }
}
