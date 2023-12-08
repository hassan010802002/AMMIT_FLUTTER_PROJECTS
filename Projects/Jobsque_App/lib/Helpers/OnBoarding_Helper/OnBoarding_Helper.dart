// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:octo_image/octo_image.dart';

import '../../Config/AppConfig.dart';

class OnBoardingHelper {
  OnBoardingHelper();

  static List<Text> TitlesText(BuildContext context) {
    return <Text>[
      Text(
        "Find a job, and start building your career from now on",
        softWrap: true,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: const Color(0xff111827),
          fontFamily: TextFontFamily,
          fontWeight: FontWeight.w600,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.sp,
        ),
      ),
      Text(
        "Hundreds of jobs are waiting for you to join together",
        softWrap: true,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: const Color(0xff111827),
          fontFamily: TextFontFamily,
          fontWeight: FontWeight.w600,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.sp,
        ),
      ),
      Text(
        "Get the best choice for the job you've always dreamed of",
        softWrap: true,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: const Color(0xff111827),
          fontFamily: TextFontFamily,
          fontWeight: FontWeight.w600,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.sp,
        ),
      ),
    ];
  }

  static List<Text> SubTitlesText(BuildContext context) {
    return <Text>[
      Text(
        "Explore over 25,924 available job roles and upgrade your operator now.",
        softWrap: true,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: const Color(0xff6B7280),
          fontFamily: TextFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
        ),
      ),
      Text(
        "Immediately join us and start applying for the job you are interested in.",
        softWrap: true,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: const Color(0xff6B7280),
          fontFamily: TextFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
        ),
      ),
      Text(
        "The better the skills you have, the greater the good job opportunities for you.",
        softWrap: true,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: const Color(0xff6B7280),
          fontFamily: TextFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
        ),
      ),
    ];
  }

  static List<OctoImage> Images(BuildContext context) {
    return <OctoImage>[
      OctoImage(
        image: const AssetImage("Assets/Images/OnBoarding1.png"),
        alignment: Alignment.topCenter,
        fit: BoxFit.fill,
        filterQuality: FilterQuality.high,
        height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 2.1.h,
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)!.w,
      ),
      OctoImage(
        image: const AssetImage("Assets/Images/OnBoarding2.png"),
        alignment: Alignment.topCenter,
        fit: BoxFit.fill,
        filterQuality: FilterQuality.high,
        height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 2.1.h,
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)!.w,
      ),
      OctoImage(
        image: const AssetImage("Assets/Images/OnBoarding3.png"),
        alignment: Alignment.topCenter,
        fit: BoxFit.fill,
        filterQuality: FilterQuality.high,
        height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 2.1.h,
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)!.w,
      ),
    ];
  }

  static List<Widget> PageViewSlider(BuildContext context, int index) {
    List<Widget> sliderIndicator = <Widget>[];
    for (int i = 0; i < 3; i++) {
      if (i == index) {
        sliderIndicator.add(
          Padding(
            padding: EdgeInsets.only(right: 3.0.w),
            child: CircleAvatar(
              backgroundColor: const Color(0xff3366FF),
              radius: 6.0.sp,
            ),
          ),
        );
      } else {
        sliderIndicator.add(
          Padding(
            padding: EdgeInsets.only(right: 3.0.w),
            child: CircleAvatar(
              backgroundColor: const Color(0xffADC8FF),
              radius: 4.5.sp,
            ),
          ),
        );
      }
    }
    return sliderIndicator;
  }
}
