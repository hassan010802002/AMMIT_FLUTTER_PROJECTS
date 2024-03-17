// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityChangePasswordText3 extends StatefulWidget {
  const ProfileSecurityChangePasswordText3({super.key});

  @override
  _ProfileSecurityChangePasswordText3State createState() => _ProfileSecurityChangePasswordText3State();
}

class _ProfileSecurityChangePasswordText3State extends State<ProfileSecurityChangePasswordText3> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Confirm your new password',
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
