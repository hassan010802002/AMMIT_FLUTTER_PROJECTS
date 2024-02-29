// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class TermsConditionsContentText2 extends StatefulWidget {
  const TermsConditionsContentText2({super.key});

  @override
  _TermsConditionsContentText2State createState() => _TermsConditionsContentText2State();
}

class _TermsConditionsContentText2State extends State<TermsConditionsContentText2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet,"
          " consectetur adipiscing elit. ",
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
