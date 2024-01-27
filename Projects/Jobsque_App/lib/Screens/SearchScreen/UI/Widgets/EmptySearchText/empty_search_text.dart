// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class EmptySearchText extends StatefulWidget {
  const EmptySearchText({Key? key}) : super(key: key);

  @override
  _EmptySearchTextState createState() => _EmptySearchTextState();
}

class _EmptySearchTextState extends State<EmptySearchText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Search not found',
      style: TextStyle(
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/15.0.sp,
        fontWeight: FontWeight.w600,
        color: const Color(0xff111827),
      ),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}
