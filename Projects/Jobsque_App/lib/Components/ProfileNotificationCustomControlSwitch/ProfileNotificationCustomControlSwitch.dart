// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Config/AppConfig.dart';
import '../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../Screens/ProfileNotificationScreen/Controller/profile_notification_controller_cubit.dart';
import '../../Screens/ProfileNotificationScreen/UI/Views/ProfileNotificationMainView.dart';

class ProfileNotificationCustomControlSwitch extends StatelessWidget {
  final bool isNotificationControl;
  final int controlIdx;
  final ProfileNotificationMainView widget;

  const ProfileNotificationCustomControlSwitch({
    super.key,
    required this.widget,
    required this.controlIdx,
    required this.isNotificationControl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          isNotificationControl
              ? widget.profileNotificationControllerCubit.notificationControlsTitles[controlIdx]
              : widget.profileNotificationControllerCubit.otherControlsTitles[controlIdx],
          style: TextStyle(
            color: const Color(0xff111827),
            fontFamily: TextFontFamily,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 21.0.sp,
            fontWeight: FontWeight.w600,
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        BlocBuilder<ProfileNotificationControllerCubit, ProfileNotificationControllerState>(
          bloc: widget.profileNotificationControllerCubit,
          builder: (context, state) {
            return Switch.adaptive(
              value: isNotificationControl
                  ? widget.profileNotificationControllerCubit.notificationControlsIndexes.contains(controlIdx)
                      ? true
                      : false
                  : widget.profileNotificationControllerCubit.otherControlsIndexes.contains(controlIdx)
                      ? true
                      : false,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              splashRadius: 30.0.sp,
              activeColor: const Color(0xffD6E4FF),
              activeTrackColor: const Color(0xff3366FF),
              inactiveThumbColor: const Color(0xffF4F4F5),
              inactiveTrackColor: const Color(0xffD1D5DB),
              trackOutlineColor: const MaterialStatePropertyAll(Colors.transparent),
              onChanged: (value) {
                if (isNotificationControl) {
                  widget.profileNotificationControllerCubit.ChangingNotificationControlsStatus(value, controlIdx);
                } else {
                  widget.profileNotificationControllerCubit.ChangingOtherControlsStatus(value, controlIdx);
                }
              },
            );
          },
        ),
      ],
    );
  }
}
