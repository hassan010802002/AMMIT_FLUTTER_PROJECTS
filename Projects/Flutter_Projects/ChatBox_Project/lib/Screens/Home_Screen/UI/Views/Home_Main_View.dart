// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home_Main_View extends StatefulWidget{
  const Home_Main_View({super.key});

  @override
  State<Home_Main_View> createState() => _Home_Main_View_State();
}

class _Home_Main_View_State extends State<Home_Main_View>{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        right: 20.0.w,
        left: 20.0.w,
        top: 60.0.h,
      ),
      child: const Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}