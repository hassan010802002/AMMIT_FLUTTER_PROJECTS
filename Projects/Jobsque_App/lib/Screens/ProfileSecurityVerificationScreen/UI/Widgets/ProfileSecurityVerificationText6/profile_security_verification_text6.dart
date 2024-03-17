// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityVerificationText6 extends StatefulWidget {
  const ProfileSecurityVerificationText6({super.key});

  @override
  _ProfileSecurityVerificationText6State createState() => _ProfileSecurityVerificationText6State();
}

class _ProfileSecurityVerificationText6State extends State<ProfileSecurityVerificationText6> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Enter the 6 digit code",
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontWeight: FontWeight.w600,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
