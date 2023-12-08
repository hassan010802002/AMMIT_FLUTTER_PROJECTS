// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/Custom_Button/Custom_Button.dart';
import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/Consts/SignUp_Consts.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/Controller/SignUp_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUp_Button_Widget extends StatefulWidget {
  final SignUp_Controller controller = Get.put(SignUp_Controller());

  SignUp_Button_Widget({super.key});

  @override
  State<StatefulWidget> createState() => _SignUp_Button_Widget_State();
}

class _SignUp_Button_Widget_State extends State<SignUp_Button_Widget> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonText: SignUp_Consts.text5,
      backgroundColor: const MaterialStatePropertyAll(SignUp_Consts.color3),
      onPressed: () {
        widget.controller.customRegistration(context, "Successful SignUp" ,  errorMessage: "SignUp Failure");
      },
      style: SignUp_Consts.style1(context),
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
