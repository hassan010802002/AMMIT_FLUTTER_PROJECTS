// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class TermsConditionsContentText3 extends StatefulWidget {
  const TermsConditionsContentText3({super.key});

  @override
  _TermsConditionsContentText3State createState() => _TermsConditionsContentText3State();
}

class _TermsConditionsContentText3State extends State<TermsConditionsContentText3> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. "
      "Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ",
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
