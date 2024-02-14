// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Views/ChatBottomSheetView/chat_bottom_sheet_view.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatAppBarChatControlsSheetButton/chat_app_bar_chat_controls_sheet_button.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatAppBarLogoIconWidget/chat_app_bar_logo_icon_widget.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatAppBarTitleTextWidget/chat_app_bar_title_text_widget.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';

class ChatAppBarView extends AppBar {
  final Map<String, String> screenData;

  ChatAppBarView({super.key, required this.screenData});

  @override
  _ChatAppBarViewState createState() => _ChatAppBarViewState();
}

class _ChatAppBarViewState extends State<ChatAppBarView> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButtonWidget(),
      backgroundColor: Colors.white,
      primary: true,
      title: Row(
        children: [
          ChatAppBarLogoIconWidget(screenData: widget.screenData),
          SizedBox(
            width: 20.0.w,
          ),
          ChatAppBarTitleTextWidget(screenData: widget.screenData),
        ],
      ),
      actions: const [
        ChatAppBarChatControlsSheetButton(),
      ],
    );
  }
}
