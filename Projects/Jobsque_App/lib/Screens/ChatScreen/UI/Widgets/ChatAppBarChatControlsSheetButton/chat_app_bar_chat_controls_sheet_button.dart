// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
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
      style: ButtonStyle(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          iconSize: MaterialStatePropertyAll(35.0.sp),
          alignment: Alignment.center,
          fixedSize: MaterialStatePropertyAll(
            Size(
              MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w,
              MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.h,
            ),
          )),
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
        image: const AssetImage("Assets/Images/more.png"),
      ),
    );
  }
}
