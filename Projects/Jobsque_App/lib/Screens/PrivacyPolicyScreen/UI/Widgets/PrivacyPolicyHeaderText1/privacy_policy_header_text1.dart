// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class PrivacyPolicyHeaderText1 extends StatefulWidget {
  const PrivacyPolicyHeaderText1({super.key});

  @override
  _PrivacyPolicyHeaderText1State createState() => _PrivacyPolicyHeaderText1State();
}

class _PrivacyPolicyHeaderText1State extends State<PrivacyPolicyHeaderText1> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Your privacy is important',
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
        fontWeight: FontWeight.w700,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
