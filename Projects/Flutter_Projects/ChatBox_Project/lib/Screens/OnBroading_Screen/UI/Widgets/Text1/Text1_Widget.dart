// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/Texts/OnBroading_Texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Text1_Widget extends StatefulWidget {
  const Text1_Widget({super.key});

  @override
  State<Text1_Widget> createState() => _Text1_Widget_State();
}

class _Text1_Widget_State extends State<Text1_Widget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      OnBroading_Texts.text5,
      textAlign: TextAlign.left,
      softWrap: true,
      style: OnBroading_Consts.textStyle6(context),
    );
  }
}
