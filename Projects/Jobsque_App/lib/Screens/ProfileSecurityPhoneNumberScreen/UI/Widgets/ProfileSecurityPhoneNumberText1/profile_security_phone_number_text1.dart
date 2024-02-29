// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityPhoneNumberText1 extends StatefulWidget {
  const ProfileSecurityPhoneNumberText1({super.key});

  @override
  _ProfileSecurityPhoneNumberText1State createState() => _ProfileSecurityPhoneNumberText1State();
}

class _ProfileSecurityPhoneNumberText1State extends State<ProfileSecurityPhoneNumberText1> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Main phone number',
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
