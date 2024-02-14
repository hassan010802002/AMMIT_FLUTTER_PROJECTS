// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class MessagesTitleTextWidget extends StatefulWidget {
  const MessagesTitleTextWidget({super.key});

  @override
  _MessagesTitleTextWidgetState createState() => _MessagesTitleTextWidgetState();
}

class _MessagesTitleTextWidgetState extends State<MessagesTitleTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Messages',
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color(0xff111827),
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/18.0.sp,
        fontFamily: TextFontFamily,
      ),
    );;
  }
}
