// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Title_Icon_Widget extends StatefulWidget {
  const Title_Icon_Widget({super.key});

  @override
  State<Title_Icon_Widget> createState() => _Title_Icon_Widget_State();
}

class _Title_Icon_Widget_State extends State<Title_Icon_Widget> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      OnBroading_Consts.image1,
      alignment: Alignment.center,
      fit: BoxFit.fill,
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)!/35.w,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)!/35.h,
    );
  }
}
