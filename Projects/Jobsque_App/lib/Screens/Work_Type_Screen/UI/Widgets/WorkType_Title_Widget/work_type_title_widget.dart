// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Helpers/WorkTypes_Helper/WorkTypes_Helper.dart';

import '../../../../../Config/AppConfig.dart';

class WorkTypeTitleWidget extends StatefulWidget {
  int index;

  WorkTypeTitleWidget({super.key, required this.index});

  @override
  _WorkTypeTitleWidgetState createState() => _WorkTypeTitleWidgetState();
}

class _WorkTypeTitleWidgetState extends State<WorkTypeTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      WorkTypes_Helper.WorkTitles(widget.index),
      textAlign: TextAlign.justify,
      style: TextStyle(
        color: const Color(0xff111827),
        fontSize: WorkTypes_Helper.WorkTitles(widget.index).length < 20
            ? MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp
            : MediaQuery_Size_Helper.MAX_WIDTH(context)! / 29.sp,
        fontWeight: FontWeight.w600,
        fontFamily: TextFontFamily,
      ),
      softWrap: true,
    );
  }
}
