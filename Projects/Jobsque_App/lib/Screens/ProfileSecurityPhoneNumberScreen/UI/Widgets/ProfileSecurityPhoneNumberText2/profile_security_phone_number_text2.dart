// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityPhoneNumberText2 extends StatefulWidget {
  const ProfileSecurityPhoneNumberText2({super.key});

  @override
  _ProfileSecurityPhoneNumberText2State createState() => _ProfileSecurityPhoneNumberText2State();
}

class _ProfileSecurityPhoneNumberText2State extends State<ProfileSecurityPhoneNumberText2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Use the phone number to reset\nyour password",
      style: TextStyle(
        color: const Color(0xff6B7280),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
        fontWeight: FontWeight.w600,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
