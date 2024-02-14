// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Widgets/JobMessagesListTileWidget/job_messages_list_tile_widget.dart';


class MainMessagesView extends StatefulWidget {
  const MainMessagesView({super.key});

  @override
  _MainMessagesViewState createState() => _MainMessagesViewState();
}

class _MainMessagesViewState extends State<MainMessagesView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      primary: true,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return JobMessagesListTileWidget(messageIndex: index);
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: const Color(0xffE5E7EB),
          height: 10.0.h,
          thickness: 1.5.w,
        );
      },
      itemCount: 6,
    );
  }
}
