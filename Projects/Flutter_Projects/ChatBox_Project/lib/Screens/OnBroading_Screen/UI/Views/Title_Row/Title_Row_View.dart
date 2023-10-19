// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/Title_Icon/Title_Icon_Widget.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/Title_Text/Title_Text_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Title_Row_View extends StatefulWidget{
  const Title_Row_View({super.key});

  @override
  State<Title_Row_View> createState() => _Title_Row_View_State();
}

class _Title_Row_View_State extends State<Title_Row_View>{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Title_Icon_Widget(),
          SizedBox(
            width: 8.0.w,
          ),
          const Title_Text_Widget(),
        ],
      ),
    );
  }
}