// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class PrivacyPolicyHeaderText2 extends StatefulWidget {
  const PrivacyPolicyHeaderText2({super.key});

  @override
  _PrivacyPolicyHeaderText2State createState() => _PrivacyPolicyHeaderText2State();
}

class _PrivacyPolicyHeaderText2State extends State<PrivacyPolicyHeaderText2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Data controllers and contract partners',
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
