// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class MainProfileLogoutIconButton extends StatefulWidget {
  const MainProfileLogoutIconButton({super.key});

  @override
  _MainProfileLogoutIconButtonState createState() => _MainProfileLogoutIconButtonState();
}

class _MainProfileLogoutIconButtonState extends State<MainProfileLogoutIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: OctoImage(
        image: const AssetImage("Assets/Images/logout.png"),
        filterQuality: FilterQuality.high,
        fit: BoxFit.contain,
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.w,
        height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.h,
        alignment: Alignment.center,
      ),
      onPressed: () {},
      style: ButtonStyle(
        visualDensity: VisualDensity.comfortable,
        alignment: Alignment.center,
        padding: MaterialStatePropertyAll(EdgeInsets.all(5.0.sp)),
        fixedSize: MaterialStatePropertyAll(
          Size(
            MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w,
            MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.h,
          ),
        ),
      ),
    );
  }
}
