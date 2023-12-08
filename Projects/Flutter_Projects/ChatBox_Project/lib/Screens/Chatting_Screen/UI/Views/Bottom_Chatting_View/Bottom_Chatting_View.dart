// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/Controller/Chatting_Controller.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Widgets/Audio_Recording_Message/audio__recording__message__widget.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Widgets/File_Shareing/file__shareing__widget.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Widgets/Media_Sharing/media__sharing__widget.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Widgets/Message_TextField/message__text_field__widget.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Widgets/Sending_Message_Button/sending__message__button__widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Bottom_Chatting_View extends StatefulWidget {
  final Chatting_Controller chatting_controller;

  const Bottom_Chatting_View({super.key, required this.chatting_controller});

  @override
  State<Bottom_Chatting_View> createState() => _Bottom_Chatting_View_State();
}

class _Bottom_Chatting_View_State extends State<Bottom_Chatting_View> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: GetX<Chatting_Controller>(
        init: widget.chatting_controller,
        builder: (logic) {
          return Container(
            decoration: BoxDecoration(
              border: BorderDirectional(
                top: BorderSide(
                  color: const Color(0xffEEFAF8),
                  width: 2.0.w,
                ),
              ),
              color: Colors.white,
            ),
            height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 10.h,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton.outlined(
                  onPressed: () {
                    logic.ChoosingLocalFile();
                  },
                  visualDensity: VisualDensity.comfortable,
                  splashRadius: 25.0,
                  icon: const File_Shareing_Widget(),
                ),
                SizedBox(
                  height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.5.w,
                  width:
                      logic.isEditing.value ? MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.4.w : MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.6.w,
                  child: Message_TextField_Widget(chatting_controller: widget.chatting_controller),
                ),
                Visibility(
                  visible: logic.isEditing.value,
                  replacement: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton.outlined(
                        onPressed: () {
                          logic.ChoosingLocalMedia();
                        },
                        visualDensity: VisualDensity.comfortable,
                        splashRadius: 25.0,
                        icon: const Media_Sharing_Widget(),
                      ),
                      GestureDetector(
                        onLongPress: () {

                          logic.RecordingAudio();
                        },
                        onLongPressEnd: (details) {
                          logic.StoppingAudioRecording();
                        },
                        child: const Audio_Recording_Message_Widget(),
                      ),
                    ],
                  ),
                  child: IconButton.filled(
                    onPressed: () {
                      logic.SendingChatMessage(message: logic.messageTextEditingController.value.text, context: context);
                    },
                    splashRadius: 26.0,
                    icon: const Sending_Message_Button_Widget(),
                    iconSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 11.8.w,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
