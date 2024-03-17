// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/ChatConsts.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ChatVoiceIconButtonWidget extends StatefulWidget {
  const ChatVoiceIconButtonWidget({super.key});

  @override
  _ChatVoiceIconButtonWidgetState createState() => _ChatVoiceIconButtonWidgetState();
}

class _ChatVoiceIconButtonWidgetState extends State<ChatVoiceIconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 30.0.sp,
      style: ChatConsts.buttonStyle5(context),
      onPressed: () {},
      icon: const Icon(
        FontAwesomeIcons.microphoneLines,
        color: ChatConsts.color13,
      ),
    );
  }
}
