// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../../Config/AppConfig.dart';
import '../../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class AppliedJobsEmptyView extends StatefulWidget {
  const AppliedJobsEmptyView({super.key});

  @override
  _AppliedJobsEmptyViewState createState() => _AppliedJobsEmptyViewState();
}

class _AppliedJobsEmptyViewState extends State<AppliedJobsEmptyView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 0.0.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OctoImage(
            image: const AssetImage("Assets/Images/Data Ilustration3.png"),
            fit: BoxFit.contain,

            filterQuality: FilterQuality.high,
            alignment: Alignment.center,
            height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.5.h,
            width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.5.w,
          ),
          Text(
            'No applications were rejected',
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff111827),
              fontFamily: TextFontFamily,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 16.0.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.0.h,
          ),
          Text(
            'If there is an application that is rejected by the company it will appear here',
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff6B7280),
              fontFamily: TextFontFamily,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
