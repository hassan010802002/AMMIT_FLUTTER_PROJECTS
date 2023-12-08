// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class File_Shareing_Widget extends StatefulWidget {
  const File_Shareing_Widget({super.key});

  @override
  State<File_Shareing_Widget> createState() => _File_Shareing_Widget_State();
}

class _File_Shareing_Widget_State extends State<File_Shareing_Widget> {
  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.paperclip,
      color: const Color(0xff000E08),
      size: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.w,
    );
  }
}


