// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/ChatConsts.dart';

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
      decoration: ChatConsts.containerStyle1(context,widget),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ChatMessagesHelper.messages(widget.chatMessageIndex),
            softWrap: true,
            textAlign: TextAlign.start,
            style: ChatConsts.textStyle3(context , widget),
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                ChatConsts.text3,
                softWrap: true,
                textAlign: TextAlign.end,
                style: ChatConsts.textStyle4(context,widget),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
