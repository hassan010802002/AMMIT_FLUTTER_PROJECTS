// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class NotificationDividerContainer extends StatefulWidget {
  const NotificationDividerContainer({super.key});

  @override
  _NotificationDividerContainerState createState() => _NotificationDividerContainerState();
}

class _NotificationDividerContainerState extends State<NotificationDividerContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 20.0.h,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: const Color(0xffF4F4F5),
        border: Border.symmetric(
          horizontal: BorderSide(
            color: const Color(0xffE5E7EB),
            width: 1.5.w,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 20.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'New',
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff6B7280),
              fontWeight: FontWeight.w500,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/28.0.sp,
              fontFamily: TextFontFamily,
            ),
          ),
          Text(
            'Read all messages',
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xff3366FF),
              fontWeight: FontWeight.w500,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/28.0.sp,
              fontFamily: TextFontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
