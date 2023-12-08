// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/Consts/LogIn_Consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Forget_Password_Widget extends StatefulWidget {
  const Forget_Password_Widget({super.key});

  @override
  State<Forget_Password_Widget> createState() => _Forget_Password_Widget_State();
}

class _Forget_Password_Widget_State extends State<Forget_Password_Widget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        LogIn_Consts.text3,
        style: LogIn_Consts.style2(context),
        softWrap: true,
        textAlign: TextAlign.center,
      ),
    );
  }
}
