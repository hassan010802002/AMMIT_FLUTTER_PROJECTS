// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/ChatConsts.dart';


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
      widget.screenData[ChatConsts.text1]!,
      softWrap: true,
      textAlign: TextAlign.start,
      style: ChatConsts.textStyle1(context),
    );
  }
}
