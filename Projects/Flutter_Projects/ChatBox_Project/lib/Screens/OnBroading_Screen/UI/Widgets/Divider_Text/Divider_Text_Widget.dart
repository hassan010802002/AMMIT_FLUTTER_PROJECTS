// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
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
        OnBroading_Consts.text2,
        textAlign: TextAlign.left,
        softWrap: true,
        style: OnBroading_Consts.textStyle2(context),
      ),
    );
  }
}
