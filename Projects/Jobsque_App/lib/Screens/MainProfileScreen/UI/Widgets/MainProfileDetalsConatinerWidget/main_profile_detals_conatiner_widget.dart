// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class MainProfileDetalsConatinerWidget extends StatefulWidget {
  const MainProfileDetalsConatinerWidget({super.key});

  @override
  _MainProfileDetalsConatinerWidgetState createState() => _MainProfileDetalsConatinerWidgetState();
}

class _MainProfileDetalsConatinerWidgetState extends State<MainProfileDetalsConatinerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(15.0.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Applied',
                style: TextStyle(
                  color: const Color(0xff6B7280),
                  fontFamily: TextFontFamily,
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                  fontWeight: FontWeight.w600,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
              Text(
                '46',
                style: TextStyle(
                  color: const Color(0xff111827),
                  fontFamily: TextFontFamily,
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
                  fontWeight: FontWeight.w600,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 50.0.h,
            child: VerticalDivider(
              color: const Color(0xffD1D5DB),
              thickness: 1.2.w,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reviewed',
                style: TextStyle(
                  color: const Color(0xff6B7280),
                  fontFamily: TextFontFamily,
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                  fontWeight: FontWeight.w600,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
              Text(
                '25',
                style: TextStyle(
                  color: const Color(0xff111827),
                  fontFamily: TextFontFamily,
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
                  fontWeight: FontWeight.w600,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 50.0.h,
            child: VerticalDivider(
              color: const Color(0xffD1D5DB),
              thickness: 1.2.w,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Contacted',
                style: TextStyle(
                  color: const Color(0xff6B7280),
                  fontFamily: TextFontFamily,
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                  fontWeight: FontWeight.w600,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
              Text(
                '15',
                style: TextStyle(
                  color: const Color(0xff111827),
                  fontFamily: TextFontFamily,
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
                  fontWeight: FontWeight.w600,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
