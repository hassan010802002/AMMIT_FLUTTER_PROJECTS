// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Views/Bottom_LogIn_View/Bottom_LogIn_View.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Views/Divider_View/Divider_View.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Views/Social_Buttons/Social_Buttons_View.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Views/Title_Row/Title_Row_View.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/Email_SignUp_Button/Email_SignUp_Button_Widget.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/Text1/Text1_Widget.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/Text2/Text2_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBroading_Main_View extends StatefulWidget {
  const OnBroading_Main_View({super.key});

  @override
  State<OnBroading_Main_View> createState() => _OnBroading_Main_View_State();
}

class _OnBroading_Main_View_State extends State<OnBroading_Main_View> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        right: 20.0.w,
        left: 20.0.w,
        top: 50.0.h,
        bottom: 20.0.h,
      ),
      decoration: OnBroading_Consts.containerStyle,
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          primary: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Title_Row_View(),
              SizedBox(
                height: 45.0.h,
              ),
              const Text1_Widget(),
              SizedBox(
                height: 15.0.h,
              ),
              const Text2_Widget(),
              SizedBox(
                height: 40.0.h,
              ),
              const Social_Buttons_View(),
              SizedBox(
                height: 45.0.w,
              ),
              const Divider_View(),
              const Email_SignUp_Button_Widget(),
              const Bottom_LogIn_View(),
            ],
          ),
        ),
      ),
    );
  }
}
