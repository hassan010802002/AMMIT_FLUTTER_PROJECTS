// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ChatDividerTextWidget extends StatefulWidget {
  const ChatDividerTextWidget({super.key});

  @override
  _ChatDividerTextWidgetState createState() => _ChatDividerTextWidgetState();
}

class _ChatDividerTextWidgetState extends State<ChatDividerTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Today, Nov 13',
      style: TextStyle(
        color: const Color(0xff9CA3AF),
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/26.0.sp,
        fontFamily: TextFontFamily,
      ),
      textAlign: TextAlign.center,
      softWrap: true,
    );
  }
}
