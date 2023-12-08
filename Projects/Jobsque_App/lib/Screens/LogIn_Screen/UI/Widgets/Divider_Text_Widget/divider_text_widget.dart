// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../../../Config/AppConfig.dart';

class DividerTextWidget extends StatefulWidget {
  const DividerTextWidget({Key? key}) : super(key: key);

  @override
  _DividerTextWidgetState createState() => _DividerTextWidgetState();
}

class _DividerTextWidgetState extends State<DividerTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Or Login With Account",
      softWrap: true,
      textAlign: TextAlign.justify,
      style: TextStyle(
        color: const Color(0xff6B7280),
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/24.0.w,
      ),
    );
  }
}
