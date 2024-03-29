// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class GoogleButtonWidget extends StatefulWidget {
  const GoogleButtonWidget({super.key});

  @override
  _GoogleButtonWidgetState createState() => _GoogleButtonWidgetState();
}

class _GoogleButtonWidgetState extends State<GoogleButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(0.0),
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
        fixedSize:
            MaterialStatePropertyAll(Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.5.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h)),
        padding: MaterialStatePropertyAll(EdgeInsets.all(15.0.sp)),
        visualDensity: VisualDensity.comfortable,
        alignment: Alignment.center,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0.sp),
            side: BorderSide(
              color: const Color(0xffD1D5DB),
              width: 2.0.w,
            ),
          ),
        ),
      ),
      icon: OctoImage(
        image: const AssetImage("Assets/Images/google.png"),
        alignment: Alignment.centerLeft,
        filterQuality: FilterQuality.high,
        fit: BoxFit.contain,
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.w,
        height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 30.0.h,
      ),
      label: Text(
        "Google",
        style: TextStyle(
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.w,
          fontWeight: FontWeight.w500,
          fontFamily: TextFontFamily,
          color: const Color(0xff363F5E),
        ),
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );
  }
}
