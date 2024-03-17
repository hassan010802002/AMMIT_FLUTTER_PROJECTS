// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityChangePasswordText2 extends StatefulWidget {
  const ProfileSecurityChangePasswordText2({super.key});

  @override
  _ProfileSecurityChangePasswordText2State createState() => _ProfileSecurityChangePasswordText2State();
}

class _ProfileSecurityChangePasswordText2State extends State<ProfileSecurityChangePasswordText2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter your new password',
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
