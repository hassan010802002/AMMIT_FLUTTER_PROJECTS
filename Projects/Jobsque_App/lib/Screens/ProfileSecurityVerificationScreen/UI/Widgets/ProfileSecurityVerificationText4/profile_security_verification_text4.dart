// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityVerificationText4 extends StatefulWidget {
  const ProfileSecurityVerificationText4({super.key});

  @override
  _ProfileSecurityVerificationText4State createState() => _ProfileSecurityVerificationText4State();
}

class _ProfileSecurityVerificationText4State extends State<ProfileSecurityVerificationText4> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "We will send a verification code to this number",
      style: TextStyle(
        color: const Color(0xff6B7280),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
        fontWeight: FontWeight.w600,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
