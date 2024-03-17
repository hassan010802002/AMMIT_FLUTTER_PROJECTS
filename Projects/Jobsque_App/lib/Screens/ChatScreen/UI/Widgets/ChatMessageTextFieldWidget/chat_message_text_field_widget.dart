// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/ChatConsts.dart';

import '../../../../../Components/CustomTextField/CustomTextField.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ChatMessageTextFieldWidget extends StatefulWidget {
  const ChatMessageTextFieldWidget({super.key});

  @override
  _ChatMessageTextFieldWidgetState createState() => _ChatMessageTextFieldWidgetState();
}

class _ChatMessageTextFieldWidgetState extends State<ChatMessageTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      fillColor: ChatConsts.color15,
      textEditingController: TextEditingController(),
      keyboardType: TextInputType.name,
      hintText: ChatConsts.text4,
      hintStyle: ChatConsts.textStyle5(context),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(45.0.sp),
        borderSide: BorderSide(
          color: ChatConsts.color5,
          strokeAlign: BorderSide.strokeAlignOutside,
          width: 1.5.w,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(45.0.sp),
        borderSide: BorderSide(
          color: ChatConsts.color5,
          strokeAlign: BorderSide.strokeAlignOutside,
          width: 1.5.w,
        ),
      ),
    );
  }
}
