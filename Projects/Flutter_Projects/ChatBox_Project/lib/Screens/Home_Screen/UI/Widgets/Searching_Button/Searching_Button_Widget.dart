// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Searching_Button_Widget extends StatefulWidget {
  const Searching_Button_Widget({super.key});

  @override
  State<Searching_Button_Widget> createState() => _Searching_Button_Widget_State();
}

class _Searching_Button_Widget_State extends State<Searching_Button_Widget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Icon(
        FontAwesomeIcons.search,
      ),
    );
  }
}
