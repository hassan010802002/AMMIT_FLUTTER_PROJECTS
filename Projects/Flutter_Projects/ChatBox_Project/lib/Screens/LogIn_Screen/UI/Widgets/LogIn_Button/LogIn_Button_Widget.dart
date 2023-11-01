// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/Custom_Button/Custom_Button.dart';
import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/Controller/LogIn_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LogIn_Button_Widget extends StatefulWidget {
  final LogIn_Controller controller = Get.put(LogIn_Controller());

  LogIn_Button_Widget({super.key});

  @override
  State<StatefulWidget> createState() => _LogIn_Button_Widget_State();
}

class _LogIn_Button_Widget_State extends State<LogIn_Button_Widget> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonText: "Log in",
      backgroundColor: const MaterialStatePropertyAll(Color(0xff24786D)),
      onPressed: () {
        widget.controller.customAuthentication(context, "Successful LogIn" , errorMessage: "LogIn Failure");
      },
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: "Caros",
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.w,
        color: Colors.white,
      ),
      fixedSize: MaterialStatePropertyAll(
        Size(
          MediaQuery_Size_Helper.MAX_WIDTH(context)!,
          MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
        ),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0.sp),
        ),
      ),
    );
  }
}
