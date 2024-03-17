// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/ChatConsts.dart';
import 'package:octo_image/octo_image.dart';

class ChatSheetArchiveButton extends StatefulWidget {
  const ChatSheetArchiveButton({super.key});

  @override
  _ChatSheetArchiveButtonState createState() => _ChatSheetArchiveButtonState();
}

class _ChatSheetArchiveButtonState extends State<ChatSheetArchiveButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: OctoImage(
        image: const AssetImage(ChatConsts.image3),
        alignment: Alignment.center,
        filterQuality: FilterQuality.high,
        fit: BoxFit.contain,
        width: 25.0.w,
        color: ChatConsts.color16,
      ),
      style: ChatConsts.buttonStyle3(context),
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            ChatConsts.text5,
            softWrap: true,
            textAlign: TextAlign.start,
            style: ChatConsts.textStyle6(context),
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
