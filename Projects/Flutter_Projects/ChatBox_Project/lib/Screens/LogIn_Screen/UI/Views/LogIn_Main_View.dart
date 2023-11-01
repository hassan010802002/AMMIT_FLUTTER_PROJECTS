// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/UI/Views/Divider_View/Divider_View.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/UI/Views/Social_Buttons/Social_Buttons_View.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/UI/Widgets/Back_Button/Back_Button_Widget.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/UI/Widgets/Emai_TextField/Emai_TextField_Widget.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/UI/Widgets/Forget_Password/Forget_Password_Widget.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/UI/Widgets/LogIn_Button/LogIn_Button_Widget.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/UI/Widgets/Password_TextField/Password_TextField_Widget.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/UI/Widgets/Text1/Text1_Widget.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/UI/Widgets/Text2/Text2_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogIn_Main_View extends StatefulWidget {
  const LogIn_Main_View({super.key});

  @override
  State<StatefulWidget> createState() => _LogIn_Main_View_State();
}

class _LogIn_Main_View_State extends State<LogIn_Main_View> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        right: 20.0.w,
        left: 20.0.w,
        top: 65.0.h,
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Back_Button_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 20.0.h,
            ),
            const Text1_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 50.0.h,
            ),
            const Text2_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 30.0.h,
            ),
            const Social_Buttons_View(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 20.0.h,
            ),
            const Divider_View(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 20.0.h,
            ),
            Emai_TextField_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 40.0.h,
            ),
            Password_TextField_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 5.0.h,
            ),
            LogIn_Button_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 50.0.h,
            ),
            const Forget_Password_Widget(),
          ],
        ),
      ),
    );
  }
}
