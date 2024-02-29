// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ProfileNotificationScreen/Controller/profile_notification_controller_cubit.dart';
import 'package:jobsque_app/Screens/ProfileNotificationScreen/UI/Widgets/JobNotificationDividerContainer/job_notification_divider_container.dart';
import 'package:jobsque_app/Screens/ProfileNotificationScreen/UI/Widgets/ProfileNotificationScreentTitle/profile_notification_screent_title.dart';

import '../../../../Components/ProfileNotificationCustomControlSwitch/ProfileNotificationCustomControlSwitch.dart';
import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../Widgets/OtherNotificationDividerContainer/other_notification_divider_container.dart';

class ProfileNotificationMainView extends StatefulWidget {
  final ProfileNotificationControllerCubit profileNotificationControllerCubit;

  const ProfileNotificationMainView({super.key, required this.profileNotificationControllerCubit});

  @override
  State<ProfileNotificationMainView> createState() => _ProfileNotificationMainViewState();
}

class _ProfileNotificationMainViewState extends State<ProfileNotificationMainView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButtonWidget(),
              const ProfileNotificationScreentTitle(),
              const SizedBox(),
            ],
          ),
        ),
        SizedBox(
          height: 30.0.h,
        ),
        const JobNotificationDividerContainer(),
        SizedBox(
          height: 20.0.h,
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 8.0.h),
            primary: true,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ProfileNotificationCustomControlSwitch(
                widget: widget,
                controlIdx: index,
                isNotificationControl: true,
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 30.0.h,
                thickness: 1.5.h,
                color: const Color(0xffD1D5DB),
              );
            },
            itemCount: 5,
          ),
        ),
        SizedBox(
          height: 20.0.h,
        ),
        const OtherNotificationDividerContainer(),
        SizedBox(
          height: 20.0.h,
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 8.0.h),
            primary: true,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ProfileNotificationCustomControlSwitch(
                widget: widget,
                controlIdx: index,
                isNotificationControl: false,
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 30.0.h,
                thickness: 1.5.h,
                color: const Color(0xffD1D5DB),
              );
            },
            itemCount: 3,
          ),
        ),
        SizedBox(
          height: 20.0.h,
        ),
      ],
    );
  }
}
