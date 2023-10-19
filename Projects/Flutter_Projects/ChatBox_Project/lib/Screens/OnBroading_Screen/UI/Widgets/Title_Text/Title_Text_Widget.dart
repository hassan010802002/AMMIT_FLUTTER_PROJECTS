// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/Consts/OnBroading_Consts.dart';
import 'package:flutter/material.dart';

class Title_Text_Widget extends StatefulWidget{
  const Title_Text_Widget({super.key});

  @override
  State<Title_Text_Widget> createState() => _Title_Text_Widget_State();
}

class _Title_Text_Widget_State extends State<Title_Text_Widget>{
  @override
  Widget build(BuildContext context) {
    return Text(
      OnBroading_Consts.text7,
      softWrap: true,
      style: OnBroading_Consts.textStyle8(context),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
  }
}