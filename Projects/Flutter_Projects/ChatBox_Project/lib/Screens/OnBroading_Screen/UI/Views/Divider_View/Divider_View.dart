// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/Divider/Divider_Widget.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/Divider_Text/Divider_Text_Widget.dart';
import 'package:flutter/material.dart';

class Divider_View extends StatefulWidget {
  const Divider_View({super.key});

  @override
  State<Divider_View> createState() => _Divider_View_State();
}

class _Divider_View_State extends State<Divider_View> {
  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider_Widget(),
          ),
          Divider_Text_Widget(),
          Expanded(
            child: Divider_Widget(),
          ),
        ],
      ),
    );
  }
}
