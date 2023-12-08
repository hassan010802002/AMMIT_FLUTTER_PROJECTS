// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/Consts/LogIn_Consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Text2_Widget extends StatefulWidget {
  const Text2_Widget({super.key});

  @override
  State<StatefulWidget> createState() => _Text2_Widget_State();
}

class _Text2_Widget_State extends State<Text2_Widget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        LogIn_Consts.text6,
        softWrap: true,
        textAlign: TextAlign.center,
        style: LogIn_Consts.style5(context),
      ),
    );
  }
}
