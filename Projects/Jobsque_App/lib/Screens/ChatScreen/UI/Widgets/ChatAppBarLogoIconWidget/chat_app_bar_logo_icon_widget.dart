// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ChatAppBarLogoIconWidget extends StatefulWidget {
  final Map<String, String> screenData;
  const ChatAppBarLogoIconWidget({super.key, required this.screenData});

  @override
  _ChatAppBarLogoIconWidgetState createState() => _ChatAppBarLogoIconWidgetState();
}

class _ChatAppBarLogoIconWidgetState extends State<ChatAppBarLogoIconWidget> {
  @override
  Widget build(BuildContext context) {
    return OctoImage(
      image: AssetImage(widget.screenData["message_icon"]!),
      alignment: Alignment.center,
      height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.h,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
    );
  }
}
