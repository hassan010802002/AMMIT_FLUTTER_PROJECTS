// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Views/UnReadMessagesView/UnReadMessagesListView/un_read_messages_list_view.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Widgets/UnReadMessagesDividerContainerWidget/un_read_messages_divider_container_widget.dart';


class UnReadMessagesView extends StatefulWidget {
  const UnReadMessagesView({super.key});

  @override
  _UnReadMessagesViewState createState() => _UnReadMessagesViewState();
}

class _UnReadMessagesViewState extends State<UnReadMessagesView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UnReadMessagesDividerContainerWidget(),
        SizedBox(
          height: 20.0.h,
        ),
        const UnReadMessagesListView(),
      ],
    );
  }
}
