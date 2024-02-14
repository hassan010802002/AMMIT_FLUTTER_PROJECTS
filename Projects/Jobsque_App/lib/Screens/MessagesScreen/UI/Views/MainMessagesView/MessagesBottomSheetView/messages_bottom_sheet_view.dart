// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Widgets/MessagesFilterSheetArchiveButtonWidget/messages_filter_sheet_archive_button_widget.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Widgets/MessagesFilterSheetTitleTextWidget/messages_filter_sheet_title_text_widget.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Widgets/MessagesFilterSheetUnReadButtonWidget/messages_filter_sheet_un_read_button_widget.dart';

import '../../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../../Controller/messages_controller_cubit.dart';
import '../../../Widgets/MessagesFilterSheetSpamButtonWidget/messages_filter_sheet_spam_button_widget.dart';

class MessagesBottomSheetView extends StatefulWidget {
  final MessagesControllerCubit messagesControllerCubit;
  const MessagesBottomSheetView({super.key, required this.messagesControllerCubit});

  @override
  _MessagesBottomSheetViewState createState() => _MessagesBottomSheetViewState();
}

class _MessagesBottomSheetViewState extends State<MessagesBottomSheetView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 2.8.h,
      padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 8.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MessagesFilterSheetTitleTextWidget(),
          SizedBox(
            height: 20.0.h,
          ),
          MessagesFilterSheetUnReadButtonWidget(messagesControllerCubit: widget.messagesControllerCubit),
          SizedBox(
            height: 20.0.h,
          ),
          const MessagesFilterSheetSpamButtonWidget(),
          SizedBox(
            height: 20.0.h,
          ),
          const MessagesFilterSheetArchiveButtonWidget(),
        ],
      ),
    );
  }
}
