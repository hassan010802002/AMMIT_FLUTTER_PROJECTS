// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Back_Button_Widget extends StatefulWidget {
  const Back_Button_Widget({super.key});

  @override
  State<StatefulWidget> createState() => _Back_Button_Widget_State();
}

class _Back_Button_Widget_State extends State<Back_Button_Widget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Icon(
        Icons.arrow_back_rounded,
        color: const Color(0xff000E08),
        size: MediaQuery_Size_Helper.MAX_WIDTH(context)!/17.0.w,
      ),
    );
  }
}
