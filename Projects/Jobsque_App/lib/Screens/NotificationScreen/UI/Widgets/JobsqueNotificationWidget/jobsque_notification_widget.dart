// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobsqueNotificationWidget extends StatefulWidget {
  const JobsqueNotificationWidget({super.key});

  @override
  _JobsqueNotificationWidgetState createState() => _JobsqueNotificationWidgetState();
}

class _JobsqueNotificationWidgetState extends State<JobsqueNotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OctoImage(
          image: const AssetImage("Assets/Images/Jobsque Logo.png"),
          height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.h,
          width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
          fit: BoxFit.contain,
        ),
        SizedBox(
          width: 20.0.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome to Jobsque',
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff111827),
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                    fontFamily: TextFontFamily,
                  ),
                ),
                SizedBox(
                  width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.6.w,
                ),
                Text(
                  '08.00AM',
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff6B7280),
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
                    fontFamily: TextFontFamily,
                  ),
                ),
              ],
            ),
            Text(
              'Hello Rafif Dian Axelingga, thank you for registering\nJobsque. Enjoy the various features that....',
              softWrap: true,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: const Color(0xff6B7280),
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 32.0.sp,
                fontFamily: TextFontFamily,
              ),
            ),
          ],
        )
      ],
    );
  }
}
