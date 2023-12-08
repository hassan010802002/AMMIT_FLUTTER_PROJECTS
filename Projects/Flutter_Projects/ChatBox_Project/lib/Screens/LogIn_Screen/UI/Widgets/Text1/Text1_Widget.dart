// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/Consts/Colors/LogIn_Colors.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/Consts/LogIn_Consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Text1_Widget extends StatefulWidget {
  const Text1_Widget({super.key});

  @override
  State<StatefulWidget> createState() => _Text1_Widget_State();
}

class _Text1_Widget_State extends State<Text1_Widget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        LogIn_Consts.text5,
        softWrap: true,
        textAlign: TextAlign.center,
        style: LogIn_Consts.style4(context),
      ),
    );
  }
}
