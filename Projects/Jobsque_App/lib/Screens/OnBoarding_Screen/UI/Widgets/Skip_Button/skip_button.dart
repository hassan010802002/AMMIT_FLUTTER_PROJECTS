// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class SkipButton extends StatefulWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  _SkipButtonState createState() => _SkipButtonState();
}

class _SkipButtonState extends State<SkipButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Skip",
        softWrap: true,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.w,
          fontWeight: FontWeight.w400,
          fontFamily: TextFontFamily,
          color: const Color(0xff6B7280),
        ),
      ),
    );
  }
}
