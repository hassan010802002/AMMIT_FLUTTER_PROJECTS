// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/Custom_Button/Custom_Button.dart';
import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Routes/MyPages/MyPages.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Controller/OnBroading_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Email_SignUp_Button_Widget extends StatefulWidget {
  const Email_SignUp_Button_Widget({super.key});

  @override
  State<Email_SignUp_Button_Widget> createState() => _Email_SignUp_Button_Widget_State();
}

class _Email_SignUp_Button_Widget_State extends State<Email_SignUp_Button_Widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.0.w),
      child: CustomButton(
        fixedSize:
            MaterialStatePropertyAll(Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h)),
        onPressed: () {
          OnBroading_Controller().Navigation(MyPages.signUpScreen);
        },
        backgroundColor: OnBroading_Consts.color8,
        buttonText: OnBroading_Consts.text3,
        shape: OnBroading_Consts.style3,
        style: OnBroading_Consts.textStyle4(context),
      ),
    );
  }
}
