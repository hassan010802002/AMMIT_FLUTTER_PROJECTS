// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityVerificationMethodText1 extends StatefulWidget {
  const ProfileSecurityVerificationMethodText1({super.key});

  @override
  _ProfileSecurityVerificationMethodText1State createState() => _ProfileSecurityVerificationMethodText1State();
}

class _ProfileSecurityVerificationMethodText1State extends State<ProfileSecurityVerificationMethodText1> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Select a verification method",
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
