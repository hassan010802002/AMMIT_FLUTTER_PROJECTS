// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatFileIconButtonWidget/chat_file_icon_button_widget.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatMessageTextFieldWidget/chat_message_text_field_widget.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatVoiceIconButtonWidget/chat_voice_icon_button_widget.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ChatBottomView extends StatefulWidget {
  const ChatBottomView({super.key});

  @override
  _ChatBottomViewState createState() => _ChatBottomViewState();
}

class _ChatBottomViewState extends State<ChatBottomView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ChatFileIconButtonWidget(),
          SizedBox(
            height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 18.0.h,
            width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.6.h,
            child: const ChatMessageTextFieldWidget(),
          ),
          const ChatVoiceIconButtonWidget(),
        ],
      ),
    );
  }
}
