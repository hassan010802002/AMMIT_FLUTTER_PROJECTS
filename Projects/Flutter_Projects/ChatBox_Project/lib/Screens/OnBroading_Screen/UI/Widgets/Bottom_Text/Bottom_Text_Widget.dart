// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:flutter/material.dart';

class Bottom_Text_Widget extends StatefulWidget {
  const Bottom_Text_Widget({super.key});

  @override
  State<Bottom_Text_Widget> createState() => _Bottom_Text_Widget_State();
}

class _Bottom_Text_Widget_State extends State<Bottom_Text_Widget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      OnBroading_Consts.text1,
      softWrap: true,
      textAlign: TextAlign.center,
      style: OnBroading_Consts.textStyle1(context),
    );
  }
}
