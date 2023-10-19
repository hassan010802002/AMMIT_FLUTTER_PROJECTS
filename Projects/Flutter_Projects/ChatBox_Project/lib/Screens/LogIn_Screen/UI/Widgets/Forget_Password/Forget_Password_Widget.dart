// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Forget_Password_Widget extends StatefulWidget {
  const Forget_Password_Widget({super.key});

  @override
  State<Forget_Password_Widget> createState() => _Forget_Password_Widget_State();
}

class _Forget_Password_Widget_State extends State<Forget_Password_Widget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Forgot password?",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: "Circular Std",
          color: const Color(0xff24786D),
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.w,
        ),
        softWrap: true,
        textAlign: TextAlign.center,
      ),
    );
  }
}
