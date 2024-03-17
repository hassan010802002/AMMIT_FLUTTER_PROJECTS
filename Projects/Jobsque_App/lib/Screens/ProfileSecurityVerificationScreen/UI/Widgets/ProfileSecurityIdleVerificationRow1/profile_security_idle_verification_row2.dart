// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:octo_image/octo_image.dart';

class ProfileSecurityIdleVerificationRow2 extends StatefulWidget {
  const ProfileSecurityIdleVerificationRow2({super.key});

  @override
  _ProfileSecurityIdleVerificationRow2State createState() => _ProfileSecurityIdleVerificationRow2State();
}

class _ProfileSecurityIdleVerificationRow2State extends State<ProfileSecurityIdleVerificationRow2> {
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
                image: const AssetImage("Assets/Images/external_drive.png"),
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
          'Adding a phone number or using an \nauthenticator will help keep your account \nsafe from harm.',
          textAlign: TextAlign.start,
          softWrap: true,
          style: TextStyle(
            color: const Color(0xff6B7280),
            fontFamily: TextFontFamily,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 27.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
