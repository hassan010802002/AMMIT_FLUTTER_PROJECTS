// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityVerificationText5 extends StatefulWidget {
  const ProfileSecurityVerificationText5({super.key});

  @override
  _ProfileSecurityVerificationText5State createState() => _ProfileSecurityVerificationText5State();
}

class _ProfileSecurityVerificationText5State extends State<ProfileSecurityVerificationText5> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Enter your password",
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
