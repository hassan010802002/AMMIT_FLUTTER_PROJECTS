// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

class Sending_Message_Button_Widget extends StatefulWidget {
  const Sending_Message_Button_Widget({super.key});

  @override
  State<Sending_Message_Button_Widget> createState() => _Sending_Message_Button_Widget_State();
}

class _Sending_Message_Button_Widget_State extends State<Sending_Message_Button_Widget> {
  @override
  Widget build(BuildContext context) {
    return OctoImage(
      image: const AssetImage("Assets/Images/pngwing.com.png"),
      fit: BoxFit.contain,
      alignment: Alignment.center,
      filterQuality: FilterQuality.high,
    );
  }
}


