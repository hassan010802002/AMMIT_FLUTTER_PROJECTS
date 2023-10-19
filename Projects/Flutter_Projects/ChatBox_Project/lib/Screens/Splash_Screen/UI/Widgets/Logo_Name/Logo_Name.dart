// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Splash_Screen/Consts/Splash_Consts.dart';
import 'package:chatbox_project/Screens/Splash_Screen/Consts/Styles/Splash_Styles.dart';
import 'package:chatbox_project/Screens/Splash_Screen/Consts/Texts/Splash_Texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Logo_Name extends StatefulWidget {
  const Logo_Name({super.key});

  @override
  State<StatefulWidget> createState() => _Logo_Name_State();
}

class _Logo_Name_State extends State<Logo_Name> {
  @override
  Widget build(BuildContext context) {
    return Text(
      Splash_Consts.text1,
      softWrap: true,
      style: Splash_Styles.style(context),
    );
  }
}
