// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/NotificationScreen/Controllers/notification_controller_cubit.dart';
import 'package:jobsque_app/Screens/NotificationScreen/UI/Views/EmptyNotificationView/empty_notification_view.dart';
import 'package:jobsque_app/Screens/NotificationScreen/UI/Views/JobsNotificationView/jobs_notification_view.dart';
import 'package:jobsque_app/Screens/NotificationScreen/UI/Widgets/NotificationTitleTextWidget/notification_title_text_widget.dart';

import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';

class NotificationMainView extends StatefulWidget {
  final NotificationControllerCubit notificationControllerCubit;

  const NotificationMainView({super.key, required this.notificationControllerCubit});

  @override
  State<NotificationMainView> createState() => _NotificationMainViewState();
}

class _NotificationMainViewState extends State<NotificationMainView> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BlocBuilder<NotificationControllerCubit, NotificationControllerState>(
        bloc: widget.notificationControllerCubit,
        builder: (context, state) {
          return Column(
            mainAxisAlignment: widget.notificationControllerCubit.isMainView
                ? MainAxisAlignment.start
                : MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButtonWidget(),
                    const NotificationTitleTextWidget(),
                    const SizedBox(),
                  ],
                ),
              ),
              widget.notificationControllerCubit.isMainView
                  ? const JobsNotificationView()
                  : const EmptyNotificationView(),
              const SizedBox(),
            ],
          );
        },
      ),
    );
  }
}
