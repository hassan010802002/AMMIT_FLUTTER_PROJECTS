// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../Widgets/EmailNotificationWidget/email_notification_widget.dart';
import '../../Widgets/JobsqueNotificationWidget/jobsque_notification_widget.dart';
import '../../Widgets/NotificationDividerContainer/notification_divider_container.dart';
import '../../Widgets/NotificationDividerContainer2/notification_divider_container2.dart';
import '../../Widgets/NotificationListWidget/notification_list_widget.dart';

class JobsNotificationView extends StatefulWidget {
  const JobsNotificationView({super.key});

  @override
  _JobsNotificationViewState createState() => _JobsNotificationViewState();
}

class _JobsNotificationViewState extends State<JobsNotificationView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NotificationDividerContainer(),
        SizedBox(
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 2.4.h,
          child: const NotificationListWidget(),
        ),
        SizedBox(
          height: 20.0.h,
        ),
        const NotificationDividerContainer2(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
          child: Column(
            children: [
              const EmailNotificationWidget(),
              Divider(
                color: const Color(0xffE5E7EB),
                height: 30.0.h,
                thickness: 1.5.h,
              ),
              const JobsqueNotificationWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
