// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/Custom_Button/Custom_Button.dart';
import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/Consts/LogIn_Consts.dart';
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
      backgroundColor: const MaterialStatePropertyAll(LogIn_Consts.color3),
      onPressed: () {
        widget.controller.customAuthentication(context, "Successful LogIn" , errorMessage: "LogIn Failure");
      },
      style: LogIn_Consts.style3(context),
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
