// ignore_for_file: camel_case_types, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/ChatConsts.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Views/ChatBottomView/chat_bottom_view.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Views/ChatMessagesListView/chat_messages_list_view.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatDividerTextWidget/chat_divider_text_widget.dart';

import '../../Controller/chat_controller_cubit.dart';

class ChatMainView extends StatefulWidget {
  final ChatControllerCubit chatControllerCubit;

  const ChatMainView({super.key, required this.chatControllerCubit});

  @override
  State<ChatMainView> createState() => _ChatMainViewState();
}

class _ChatMainViewState extends State<ChatMainView> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        primary: true,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
              child: Column(
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 3.2.w,
                        child: Divider(
                          height: 20.0.h,
                          color: ChatConsts.color8,
                          thickness: 1.5.w,
                        ),
                      ),
                      const ChatDividerTextWidget(),
                      SizedBox(
                        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 3.2.w,
                        child: Divider(
                          height: 20.0.h,
                          color: ChatConsts.color8,
                          thickness: 1.5.w,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  const ChatMessagesListView(),
                ],
              ),
            ),
            const ChatBottomView(),
          ],
        ),
      ),
    );
  }
}
