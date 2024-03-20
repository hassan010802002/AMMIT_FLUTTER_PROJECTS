// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/ChatConsts.dart';


class ChatDividerTextWidget extends StatefulWidget {
  const ChatDividerTextWidget({super.key});

  @override
  _ChatDividerTextWidgetState createState() => _ChatDividerTextWidgetState();
}

class _ChatDividerTextWidgetState extends State<ChatDividerTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      ChatConsts.text2,
      style: ChatConsts.textStyle2(context),
      textAlign: TextAlign.center,
      softWrap: true,
    );
  }
}
