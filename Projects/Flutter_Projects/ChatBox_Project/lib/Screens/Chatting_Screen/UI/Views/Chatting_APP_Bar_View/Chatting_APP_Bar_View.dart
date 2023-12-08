// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Widgets/Back_Button/Back_Button_Widget.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Widgets/ProfileImage/Profile_Image_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Chatting_APP_Bar_View extends AppBar {
  Chatting_APP_Bar_View({super.key});

  @override
  State<Chatting_APP_Bar_View> createState() => _Chatting_APP_Bar_View_State();
}

class _Chatting_APP_Bar_View_State extends State<Chatting_APP_Bar_View> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              fit: StackFit.loose,
              children: [
                const Profile_Image_Widget(),
                ClipOval(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff2BEF83),
                    ),
                    constraints: BoxConstraints.tight(
                      Size(15.0.w, 15.0.h),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 15.0.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(Get.parameters['userChatName']!),
                Text(
                  "Active now",
                  style: TextStyle(
                    color: const Color(0xff797C7B),
                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.w,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Circular Std",
                  ),
                  textAlign: TextAlign.justify,
                  softWrap: true,
                ),
              ],
            ),
          ],
        ),
      ),
      leadingWidth: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.w,
      leading: Padding(
        padding: EdgeInsets.only(left: 20.0.w),
        child: Back_Button_Widget(),
      ),
      automaticallyImplyLeading: true,
      excludeHeaderSemantics: true,
      toolbarHeight: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 10.0,
      titleTextStyle: TextStyle(
        color: const Color(0xff000E08),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.w,
        fontWeight: FontWeight.w600,
        fontFamily: "Caros",
      ),
      iconTheme: IconThemeData(
        size: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 16.0.w,
        color: Colors.white,
      ),
      actionsIconTheme: IconThemeData(
        size: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.w,
        color: const Color(0xff000E08),
      ),
      actions: [
        IconButton(
          alignment: Alignment.center,
          splashRadius: 30.0.sp,
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.phoneAlt),
        ),
        IconButton(
          alignment: Alignment.center,
          splashRadius: 30.0.sp,
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.video),
        ),
        SizedBox(
          width: 12.0.w,
        ),
      ],
    );
  }
}
