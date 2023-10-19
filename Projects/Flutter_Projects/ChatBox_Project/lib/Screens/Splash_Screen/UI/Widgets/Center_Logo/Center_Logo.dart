// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Splash_Screen/Consts/Splash_Consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:octo_image/octo_image.dart';

class Center_Logo extends StatefulWidget {
  const Center_Logo({super.key});

  @override
  State<StatefulWidget> createState() => _Center_Logo_State();
}

class _Center_Logo_State extends State<Center_Logo> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Splash_Consts.image1,
      fit: BoxFit.fill,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)!/8.5.w,
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)!/7.5.h,
      alignment: Alignment.center,
    );
  }
}
