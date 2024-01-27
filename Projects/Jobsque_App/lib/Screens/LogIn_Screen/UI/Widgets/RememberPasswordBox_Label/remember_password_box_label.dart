// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class RememberPasswordBoxLabel extends StatefulWidget {
  const RememberPasswordBoxLabel({Key? key}) : super(key: key);

  @override
  _RememberPasswordBoxLabelState createState() => _RememberPasswordBoxLabelState();
}

class _RememberPasswordBoxLabelState extends State<RememberPasswordBoxLabel> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Remember me",
      softWrap: true,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: const Color(0xff1F2937),
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
      ),
    );
  }
}
