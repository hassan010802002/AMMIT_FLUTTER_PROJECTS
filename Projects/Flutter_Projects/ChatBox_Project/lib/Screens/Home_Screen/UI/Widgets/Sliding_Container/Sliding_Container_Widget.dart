// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sliding_Container_Widget extends StatefulWidget {
  const Sliding_Container_Widget({super.key});

  @override
  State<Sliding_Container_Widget> createState() => _Sliding_Container_Widget_State();
}

class _Sliding_Container_Widget_State extends State<Sliding_Container_Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffE6E6E6),
        borderRadius: BorderRadius.circular(20.0),
      ),
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)!/10.w,
      height: 5.h,
    );
  }
}
