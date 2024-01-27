// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class SubWelcomeText extends StatefulWidget {
  const SubWelcomeText({Key? key}) : super(key: key);

  @override
  _SubWelcomeTextState createState() => _SubWelcomeTextState();
}

class _SubWelcomeTextState extends State<SubWelcomeText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Create a better future for yourself here',
      softWrap: true,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/24.0.w,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
        color: const Color(0xff6B7280),
      ),
    );
  }
}
