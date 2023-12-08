// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Screens/Home_Screen/Controller/Home_Controller.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Views/CarouselSlider_View/CarouselSlider_View.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Views/SlidingUpPannel_View/SlidingUpPannel_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Home_Main_View extends StatefulWidget{
  final Home_Controller home_controller;

  const Home_Main_View({super.key, required this.home_controller});

  @override
  State<Home_Main_View> createState() => _Home_Main_View_State();
}

class _Home_Main_View_State extends State<Home_Main_View>{

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        top: 30.0.h,
      ),
      decoration: const BoxDecoration(
        color: Color(0xff000E08),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          primary: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider_View(home_controller: widget.home_controller),
              SlidingUpPannel_View(home_controller: widget.home_controller),
            ],
          ),
        ),
      ),
    );
  }
}