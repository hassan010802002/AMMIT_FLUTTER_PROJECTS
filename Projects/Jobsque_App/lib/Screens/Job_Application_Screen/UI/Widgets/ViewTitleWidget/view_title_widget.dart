// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ViewTitleWidget extends StatefulWidget {
  const ViewTitleWidget({Key? key}) : super(key: key);

  @override
  _ViewTitleWidgetState createState() => _ViewTitleWidgetState();
}

class _ViewTitleWidgetState extends State<ViewTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Job Detail',
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.sp,
        fontWeight: FontWeight.w800,
      ),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}
