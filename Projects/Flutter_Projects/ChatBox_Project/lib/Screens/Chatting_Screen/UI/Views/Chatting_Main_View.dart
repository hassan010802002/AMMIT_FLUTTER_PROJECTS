// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Screens/Chatting_Screen/Controller/Chatting_Controller.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Views/Bottom_Chatting_View/Bottom_Chatting_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Chatting_Main_View extends StatefulWidget{
  const Chatting_Main_View({super.key});

  @override
  State<Chatting_Main_View> createState() => _Chatting_Main_View_State();
}

class _Chatting_Main_View_State extends State<Chatting_Main_View>{
  Chatting_Controller chatting_controller = Get.put(Chatting_Controller());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 50.0.h,
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Bottom_Chatting_View(),
          ),
        ],
      ),
    );
  }
}