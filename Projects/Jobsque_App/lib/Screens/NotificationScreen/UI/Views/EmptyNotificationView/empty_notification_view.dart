// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class EmptyNotificationView extends StatefulWidget {
  const EmptyNotificationView({super.key});

  @override
  _EmptyNotificationViewState createState() => _EmptyNotificationViewState();
}

class _EmptyNotificationViewState extends State<EmptyNotificationView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OctoImage(
          image: const AssetImage("Assets/Images/Notification Ilustration.png"),
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
          alignment: Alignment.center,
          height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.2.h,
          width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.2.w,
        ),
        Text(
          'No new notifications yet',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xff111827),
            fontFamily: TextFontFamily,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 16.0.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'You will receive a notification if there is\nsomething on your account.',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xff6B7280),
            fontFamily: TextFontFamily,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
