// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dismissible_Background_Widget extends StatefulWidget {
  const Dismissible_Background_Widget({super.key});

  @override
  State<Dismissible_Background_Widget> createState() => _Dismissible_Background_Widget_State();
}

class _Dismissible_Background_Widget_State extends State<Dismissible_Background_Widget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xff000E08),
            radius: 25.0,
            child: Icon(
              FontAwesomeIcons.bell,
              size: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.w,
            ),
          ),
          SizedBox(
            width: 20.0.w,
          ),
          CircleAvatar(
            backgroundColor: const Color(0xffEA3736),
            radius: 25.0,
            child: Icon(
              FontAwesomeIcons.solidTrashAlt,
              size: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.w,
            ),
          ),
          SizedBox(
            width: 12.0.w,
          ),
        ],
      ),
    );
  }
}
