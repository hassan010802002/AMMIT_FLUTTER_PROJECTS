// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Divider_Text_Widget extends StatefulWidget {
  const Divider_Text_Widget({super.key});

  @override
  State<Divider_Text_Widget> createState() => _Divider_Text_Widget_State();
}

class _Divider_Text_Widget_State extends State<Divider_Text_Widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
      child: Text(
        "OR",
        textAlign: TextAlign.left,
        softWrap: true,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Circular Std",
          color: const Color(0xff797C7B),
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.w,
        ),
      ),
    );
  }
}
