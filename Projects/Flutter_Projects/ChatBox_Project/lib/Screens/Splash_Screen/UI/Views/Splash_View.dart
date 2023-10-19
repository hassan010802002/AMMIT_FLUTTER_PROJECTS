// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/Splash_Screen/UI/Widgets/Center_Logo/Center_Logo.dart';
import 'package:chatbox_project/Screens/Splash_Screen/UI/Widgets/Logo_Name/Logo_Name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash_View extends StatefulWidget{
  const Splash_View({super.key});

  @override
  State<StatefulWidget> createState() => _Splash_View_State();
}

class _Splash_View_State extends State<Splash_View>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center_Logo(),
          SizedBox(
            height: 15.0.h,
          ),
          const Logo_Name(),
        ],
      ),
    );
  }
}