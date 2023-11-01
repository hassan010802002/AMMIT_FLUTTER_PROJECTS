// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/Controller/SignUp_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Back_Button_Widget extends StatefulWidget {
  final SignUp_Controller controller = Get.put(SignUp_Controller());

  Back_Button_Widget({super.key});

  @override
  State<StatefulWidget> createState() => _Back_Button_Widget_State();
}

class _Back_Button_Widget_State extends State<Back_Button_Widget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.controller.BackNavigation();
      },
      child: Align(
        alignment: Alignment.topLeft,
        child: Icon(
          FontAwesomeIcons.arrowLeft,
          color: const Color(0xff000E08),
          size: MediaQuery_Size_Helper.MAX_WIDTH(context)!/15.0.w,
        ),
      ),
    );
  }
}
