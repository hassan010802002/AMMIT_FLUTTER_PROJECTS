// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/ChatConsts.dart';
import 'package:octo_image/octo_image.dart';
import '../../Views/ChatBottomSheetView/chat_bottom_sheet_view.dart';

class ChatAppBarChatControlsSheetButton extends StatefulWidget {
  const ChatAppBarChatControlsSheetButton({super.key});

  @override
  _ChatAppBarChatControlsSheetButtonState createState() => _ChatAppBarChatControlsSheetButtonState();
}

class _ChatAppBarChatControlsSheetButtonState extends State<ChatAppBarChatControlsSheetButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 30.0.sp,
      style: ChatConsts.buttonStyle1(context),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          showDragHandle: true,
          isScrollControlled: true,
          enableDrag: true,
          builder: (context) {
            return const ChatBottomSheetView();
          },
        );
      },
      icon: OctoImage(
        alignment: Alignment.center,
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
        image: const AssetImage(ChatConsts.image1),
      ),
    );
  }
}
