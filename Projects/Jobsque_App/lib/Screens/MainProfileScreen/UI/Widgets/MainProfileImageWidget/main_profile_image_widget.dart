// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class MainProfileImageWidget extends StatefulWidget {
  const MainProfileImageWidget({super.key});

  @override
  _MainProfileImageWidgetState createState() => _MainProfileImageWidgetState();
}

class _MainProfileImageWidgetState extends State<MainProfileImageWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.0.w,
        height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.0.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            strokeAlign: BorderSide.strokeAlignInside,
            width: 3.0.w,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(90.0.sp),
          image: const DecorationImage(
            image: AssetImage("Assets/Images/profileImage.png"),
            fit: BoxFit.cover,
            alignment: Alignment.center,
            filterQuality: FilterQuality.high,
          ),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
