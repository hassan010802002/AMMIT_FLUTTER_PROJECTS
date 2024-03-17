// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityVerificationText2 extends StatefulWidget {
  const ProfileSecurityVerificationText2({super.key});

  @override
  _ProfileSecurityVerificationText2State createState() => _ProfileSecurityVerificationText2State();
}

class _ProfileSecurityVerificationText2State extends State<ProfileSecurityVerificationText2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Secure your account with \ntwo-step verification",
      style: TextStyle(
        color: const Color(0xff6B7280),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontWeight: FontWeight.w600,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
