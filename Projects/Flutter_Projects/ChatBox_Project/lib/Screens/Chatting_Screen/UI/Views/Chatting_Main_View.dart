// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Screens/Chatting_Screen/Controller/Chatting_Controller.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Views/Bottom_Chatting_View/Bottom_Chatting_View.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Views/Chats_Messages_View/MyChats_Messages_View/MyChats__Messages__View.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Views/Chats_Messages_View/User_Chats_Messages_View/UserChats__Messages__View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Chatting_Main_View extends StatefulWidget {
  const Chatting_Main_View({super.key});

  @override
  State<Chatting_Main_View> createState() => _Chatting_Main_View_State();
}

class _Chatting_Main_View_State extends State<Chatting_Main_View> {

  @override
  Widget build(BuildContext context) {
  Chatting_Controller chatting_controller = Get.put(Chatting_Controller(context: context));
    return Container(
      padding: EdgeInsets.only(
        top: 50.0.h,
      ),
      alignment: Alignment.topCenter,
      child: Stack(
        alignment: Alignment.topCenter,
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: ScrollController(),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 100.0.h),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UserChats__Messages__View(chatting_controller: chatting_controller),
                        MyChats__Messages__View(chatting_controller: chatting_controller),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Bottom_Chatting_View(chatting_controller: chatting_controller),
          ),
        ],
      ),
    );
  }
}
