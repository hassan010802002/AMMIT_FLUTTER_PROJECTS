// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/ChatMessagesHelper/ChatMessagesHelper.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ChatMessageContainerWidget extends StatefulWidget {
  final int chatMessageIndex;
  const ChatMessageContainerWidget({super.key, required this.chatMessageIndex});

  @override
  _ChatMessageContainerWidgetState createState() => _ChatMessageContainerWidgetState();
}

class _ChatMessageContainerWidgetState extends State<ChatMessageContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ChatMessagesHelper.messages(widget.chatMessageIndex).length > 20
          ? MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.5.w
          : MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.8.w,
      alignment: Alignment.center,
      padding: EdgeInsets.all(12.0.sp),
      decoration: BoxDecoration(
        color: (widget.chatMessageIndex % 2) == 0 ? const Color(0xffE5E7EB) : const Color(0xff3366FF),
        borderRadius: (widget.chatMessageIndex % 2) == 0
            ? BorderRadius.only(
          bottomLeft: Radius.circular(12.0.sp),
          bottomRight: Radius.circular(12.0.sp),
          topRight: Radius.circular(12.0.sp),
        )
            : BorderRadius.only(
          bottomRight: Radius.circular(12.0.sp),
          bottomLeft: Radius.circular(12.0.sp),
          topLeft: Radius.circular(12.0.sp),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ChatMessagesHelper.messages(widget.chatMessageIndex),
            softWrap: true,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: (widget.chatMessageIndex % 2) == 0 ? const Color(0xff1F2937) : const Color(0xffF4F4F5),
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
              fontWeight: FontWeight.w500,
              fontFamily: TextFontFamily,
            ),
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '10.18',
                softWrap: true,
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: (widget.chatMessageIndex % 2) == 0 ? const Color(0xff9CA3AF) : const Color(0xffE5E7EB),
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: TextFontFamily,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
