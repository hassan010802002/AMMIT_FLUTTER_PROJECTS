// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/Bottom_Text/Bottom_Text_Widget.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/LogIn_Text_Button/LogIn_Text_Button_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bottom_LogIn_View extends StatefulWidget {
  const Bottom_LogIn_View({super.key});

  @override
  State<Bottom_LogIn_View> createState() => _Bottom_LogIn_View_State();
}

class _Bottom_LogIn_View_State extends State<Bottom_LogIn_View> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 45.0.h),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Bottom_Text_Widget(),
            LogIn_Text_Button(),
          ],
        ),
      ),
    );
  }
}
