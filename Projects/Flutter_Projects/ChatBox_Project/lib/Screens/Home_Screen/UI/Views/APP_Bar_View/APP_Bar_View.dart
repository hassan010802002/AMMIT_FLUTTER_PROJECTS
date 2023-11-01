// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Widgets/ProfileImage/Profile_Image_Widget.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Widgets/Searching_Button/Searching_Button_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class APP_Bar_View extends AppBar{
  APP_Bar_View({super.key});

  @override
  State<APP_Bar_View> createState() => _APP_Bar_View_State();
}

class _APP_Bar_View_State extends State<APP_Bar_View>{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff000E08),
      centerTitle: true,
      title: const Text("Home"),
      leading: const Searching_Button_Widget(),
      automaticallyImplyLeading: true,
      excludeHeaderSemantics: true,
      toolbarHeight: MediaQuery_Size_Helper.MAX_HEIGHT(context)!/10.0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/16.0.w,
        fontWeight: FontWeight.w600,
        fontFamily: "Caros",
      ),
      iconTheme: IconThemeData(
        size: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 16.0.w,
        color: Colors.white,
      ),
      actions: const [
        Profile_Image_Widget()
      ],
    );
  }
}