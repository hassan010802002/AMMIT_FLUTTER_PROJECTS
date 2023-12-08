// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:chatbox_project/Components/CustomTextField/CustomTextField.dart';
import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/Controller/Chatting_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Message_TextField_Widget extends StatefulWidget {
  final Chatting_Controller? chatting_controller;

  const Message_TextField_Widget({super.key, required this.chatting_controller});

  @override
  State<Message_TextField_Widget> createState() => _Message_TextField_Widget_State();
}

class _Message_TextField_Widget_State extends State<Message_TextField_Widget> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      textEditingController: widget.chatting_controller!.messageTextEditingController.value,
      onSubmitted: (p0) {
        widget.chatting_controller!.editingStatus(false);
      },
      onEditingComplete: () {
        widget.chatting_controller!
            .SendingChatMessage(message: widget.chatting_controller!.messageTextEditingController.value.text, context: context);
        widget.chatting_controller!.editingStatus(false);
      },
      onTap: () {
        widget.chatting_controller!.editingStatus(true);
      },
      fillColor: const Color(0xffF3F6F6),
      hintText: "Write your message .....",
      hintStyle: TextStyle(
        color: const Color(0xff797C7B),
        fontFamily: "Circular Std",
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.w,
        fontWeight: FontWeight.w500,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.0.sp),
        borderSide: BorderSide(
          width: 1.5.w,
          color: const Color(0xffF3F6F6),
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.0.sp),
        borderSide: BorderSide(
          width: 1.5.w,
          color: const Color(0xffF3F6F6),
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
    );
  }
}
