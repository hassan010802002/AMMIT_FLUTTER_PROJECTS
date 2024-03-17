// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/ChatConsts.dart';


class ChatFileIconButtonWidget extends StatefulWidget {
  const ChatFileIconButtonWidget({super.key});

  @override
  _ChatFileIconButtonWidgetState createState() => _ChatFileIconButtonWidgetState();
}

class _ChatFileIconButtonWidgetState extends State<ChatFileIconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 30.0.sp,
      style: ChatConsts.buttonStyle2(context),
      onPressed: () {},
      icon: const Icon(
        FontAwesomeIcons.paperclip,
        color: ChatConsts.color13,
      ),
    );
  }
}
