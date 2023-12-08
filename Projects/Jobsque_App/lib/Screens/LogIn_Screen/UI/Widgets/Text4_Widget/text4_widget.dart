// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../../../Config/AppConfig.dart';

class Text4Widget extends StatefulWidget {
  const Text4Widget({Key? key}) : super(key: key);

  @override
  _Text4WidgetState createState() => _Text4WidgetState();
}

class _Text4WidgetState extends State<Text4Widget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Don’t have an account?",
      softWrap: true,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/24.0.w,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
        color: const Color(0xff9CA3AF),
      ),
    );
  }
}
