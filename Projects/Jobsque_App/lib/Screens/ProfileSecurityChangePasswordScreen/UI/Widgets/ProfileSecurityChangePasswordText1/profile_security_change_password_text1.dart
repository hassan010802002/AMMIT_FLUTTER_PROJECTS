// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityChangePasswordText1 extends StatefulWidget {
  const ProfileSecurityChangePasswordText1({super.key});

  @override
  _ProfileSecurityChangePasswordText1State createState() => _ProfileSecurityChangePasswordText1State();
}

class _ProfileSecurityChangePasswordText1State extends State<ProfileSecurityChangePasswordText1> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter your old password',
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontWeight: FontWeight.w600,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
