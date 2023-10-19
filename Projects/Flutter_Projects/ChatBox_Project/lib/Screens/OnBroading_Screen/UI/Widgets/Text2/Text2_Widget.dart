// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:flutter/material.dart';

class Text2_Widget extends StatefulWidget {
  const Text2_Widget({super.key});

  @override
  State<Text2_Widget> createState() => _Text2_Widget_State();
}

class _Text2_Widget_State extends State<Text2_Widget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      OnBroading_Consts.text6,
      textAlign: TextAlign.left,
      softWrap: true,
      style: OnBroading_Consts.textStyle7(context),
    );
  }
}
