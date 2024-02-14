// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class MessagesFilterSheetTitleTextWidget extends StatefulWidget {
  const MessagesFilterSheetTitleTextWidget({super.key});

  @override
  _MessagesFilterSheetTitleTextWidgetState createState() => _MessagesFilterSheetTitleTextWidgetState();
}

class _MessagesFilterSheetTitleTextWidgetState extends State<MessagesFilterSheetTitleTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Message filters',
      softWrap: true,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: const Color(0xff374151),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
