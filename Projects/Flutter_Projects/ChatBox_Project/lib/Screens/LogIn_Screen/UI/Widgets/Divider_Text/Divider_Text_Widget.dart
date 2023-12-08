// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/Consts/LogIn_Consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Divider_Text_Widget extends StatefulWidget {
  const Divider_Text_Widget({super.key});

  @override
  State<Divider_Text_Widget> createState() => _Divider_Text_Widget_State();
}

class _Divider_Text_Widget_State extends State<Divider_Text_Widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
      child: Text(
        LogIn_Consts.text1,
        textAlign: TextAlign.left,
        softWrap: true,
        style: LogIn_Consts.style1(context),
      ),
    );
  }
}
