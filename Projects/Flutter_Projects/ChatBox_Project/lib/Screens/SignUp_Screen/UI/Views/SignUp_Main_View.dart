// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/UI/Widgets/Back_Button/Back_Button_Widget.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/UI/Widgets/Confirmation_Password_TextField/Confirmation_Password_TextField.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/UI/Widgets/Emai_TextField/Emai_TextField_Widget.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/UI/Widgets/Name_TextField/Name_TextField_Widget.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/UI/Widgets/Password_TextField/Password_TextField_Widget.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/UI/Widgets/SignUp_Button/SignUp_Button_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/Text1/Text1_Widget.dart';
import '../Widgets/Text2/Text2_Widget.dart';

class SignUp_Main_View extends StatefulWidget {
  const SignUp_Main_View({super.key});

  @override
  State<StatefulWidget> createState() => _SignUp_Main_View_State();
}

class _SignUp_Main_View_State extends State<SignUp_Main_View> {
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
            const Back_Button_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 10.0.h,
            ),
            const Text1_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 50.0.h,
            ),
            const Text2_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 12.0.h,
            ),
            const Name_TextField_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 40.0.h,
            ),
            const Emai_TextField_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 40.0.h,
            ),
            const Password_TextField_Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 40.0.h,
            ),
            const Confirmation_Password_TextField(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 7.0.h,
            ),
            const SignUp_Button_Widget(),
          ],
        ),
      ),
    );
  }
}
