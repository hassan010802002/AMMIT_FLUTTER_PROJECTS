// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:octo_image/octo_image.dart';

class ProfileSecurityIdleVerificationRow1 extends StatefulWidget {
  const ProfileSecurityIdleVerificationRow1({super.key});

  @override
  _ProfileSecurityIdleVerificationRow1State createState() => _ProfileSecurityIdleVerificationRow1State();
}

class _ProfileSecurityIdleVerificationRow1State extends State<ProfileSecurityIdleVerificationRow1> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Container(
            height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h,
            width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.w,
            color: const Color(0xffD6E4FF),
            alignment: Alignment.center,
            padding: EdgeInsets.zero,
            child: Center(
              child: OctoImage(
                image: const AssetImage("Assets/Images/lock.png"),
                alignment: Alignment.center,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
                color: const Color(0xff3366FF),
                width: 22.0.w,
                height: 22.0.h,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 15.0.w,
        ),
        Text(
          'Two-step verification provides additional \nsecurity by asking for a verification code \nevery time you log in on another device.',
          textAlign: TextAlign.start,
          softWrap: true,
          style: TextStyle(
            color: const Color(0xff6B7280),
            fontFamily: TextFontFamily,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 27.0.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
