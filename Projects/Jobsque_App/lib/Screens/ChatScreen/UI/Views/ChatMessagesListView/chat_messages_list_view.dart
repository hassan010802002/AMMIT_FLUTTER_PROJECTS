// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/ChatMessagesHelper/ChatMessagesHelper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatMessageContainerWidget/chat_message_container_widget.dart';

class ChatMessagesListView extends StatefulWidget {
  const ChatMessagesListView({super.key});

  @override
  _ChatMessagesListViewState createState() => _ChatMessagesListViewState();
}

class _ChatMessagesListViewState extends State<ChatMessagesListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      primary: true,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return (index % 2) == 0
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChatMessageContainerWidget(chatMessageIndex: index),
                  const SizedBox(),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  ChatMessageContainerWidget(chatMessageIndex: index),
                ],
              );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 15.0.h,
        );
      },
      itemCount: 5,
    );
  }
}
