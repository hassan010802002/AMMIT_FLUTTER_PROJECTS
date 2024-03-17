// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatSheetArchiveButton/chat_sheet_archive_button.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatSheetDeleteButton/chat_sheet_delete_button.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatSheetJobVisitButton/chat_sheet_job_visit_button.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatSheetMuteButton/chat_sheet_mute_button.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatSheetUnReadButton/chat_sheet_unread_button.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatSheetViewApplicationButton/chat_sheet_view_application_button.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ChatBottomSheetView extends StatefulWidget {
  const ChatBottomSheetView({super.key});

  @override
  _ChatBottomSheetViewState createState() => _ChatBottomSheetViewState();
}

class _ChatBottomSheetViewState extends State<ChatBottomSheetView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 1.9.h,
      padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 8.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ChatSheetJobVisitButton(),
          SizedBox(
            height: 15.0.h,
          ),
          const ChatSheetViewApplicationButton(),
          SizedBox(
            height: 15.0.h,
          ),
          const ChatSheetUnReadButton(),
          SizedBox(
            height: 15.0.h,
          ),
          const ChatSheetMuteButton(),
          SizedBox(
            height: 15.0.h,
          ),
          const ChatSheetArchiveButton(),
          SizedBox(
            height: 15.0.h,
          ),
          const ChatSheetDeleteButton(),
        ],
      ),
    );
  }
}
