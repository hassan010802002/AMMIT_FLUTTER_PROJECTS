// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/Consts/SignUp_Consts.dart';
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
        SignUp_Consts.text6,
        softWrap: true,
        textAlign: TextAlign.center,
        style: SignUp_Consts.style2(context),
      ),
    );
  }
}
