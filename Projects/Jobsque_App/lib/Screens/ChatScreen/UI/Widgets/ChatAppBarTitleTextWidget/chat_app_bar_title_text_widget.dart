// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ChatAppBarTitleTextWidget extends StatefulWidget {
  final Map<String, String> screenData;
  const ChatAppBarTitleTextWidget({super.key, required this.screenData});

  @override
  _ChatAppBarTitleTextWidgetState createState() => _ChatAppBarTitleTextWidgetState();
}

class _ChatAppBarTitleTextWidgetState extends State<ChatAppBarTitleTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.screenData["message_title"]!,
      softWrap: true,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: const Color(0xff111827),
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontFamily: TextFontFamily,
      ),
    );
  }
}
