// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';
import '../../../Constants/ChatConsts.dart';

class ChatSheetViewApplicationButton extends StatefulWidget {
  const ChatSheetViewApplicationButton({super.key});

  @override
  _ChatSheetViewApplicationButtonState createState() => _ChatSheetViewApplicationButtonState();
}

class _ChatSheetViewApplicationButtonState extends State<ChatSheetViewApplicationButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: OctoImage(
        image: const AssetImage(ChatConsts.image8),
        alignment: Alignment.center,
        filterQuality: FilterQuality.high,
        fit: BoxFit.contain,
        width: 25.0.w,
        color: ChatConsts.color16,
      ),
      style: ChatConsts.buttonStyle4(context),
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            ChatConsts.text10,
            softWrap: true,
            textAlign: TextAlign.start,
            style: ChatConsts.textStyle7(context),
          ),
          Icon(
            FontAwesomeIcons.angleRight,
            size: 25.0.sp,
            color: ChatConsts.color10,
          ),
        ],
      ),
    );
  }
}
