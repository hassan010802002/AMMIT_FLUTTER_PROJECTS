// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Text2_Widget extends StatefulWidget {
  const Text2_Widget({super.key});

  @override
  State<StatefulWidget> createState() => _Text2_Widget_State();
}

class _Text2_Widget_State extends State<Text2_Widget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        "Get chatting with friends and family today by signing up for our chat app!",
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color(0xff797C7B),
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/28.0.w,
          fontWeight: FontWeight.w400,
          fontFamily: "Circular Std",
        ),
      ),
    );
  }
}
