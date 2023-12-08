// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../../../Config/AppConfig.dart';

class Text1Widget extends StatefulWidget {
  const Text1Widget({Key? key}) : super(key: key);

  @override
  _Text1WidgetState createState() => _Text1WidgetState();
}

class _Text1WidgetState extends State<Text1Widget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Where are your prefered Location?",
      style: TextStyle(
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/15.0.sp,
        color: const Color(0xff111827),
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
