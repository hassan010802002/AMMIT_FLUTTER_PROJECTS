// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'profile_notification_controller_state.dart';

class ProfileNotificationControllerCubit extends Cubit<ProfileNotificationControllerState> {
  List<int> notificationControlsIndexes = <int>[];
  List<int> otherControlsIndexes = <int>[];
  List<String> notificationControlsTitles = <String>[
    'Your Job Search Alert',
    'Job Application Update',
    'Job Application Reminders',
    'Jobs You May Be Interested In',
    'Job Seeker Updates',
  ];
  List<String> otherControlsTitles = <String>[
    'Show Profile',
    'All Message',
    'Message Nudges',
  ];

  ProfileNotificationControllerCubit() : super(ProfileNotificationControllerInitial());

  void ChangingNotificationControlsStatus(bool currentStatus , int notificationControlIdx){
    emit(ProfileNotificationIdleControlsStatus());
    if (currentStatus) {
      if (!notificationControlsIndexes.contains(notificationControlIdx)) {
        notificationControlsIndexes.add(notificationControlIdx);
      }
    } else {
      notificationControlsIndexes.remove(notificationControlIdx);
    }
    log("Selected Notification Controls is : ${notificationControlsIndexes.length}" , name: "notification controls");
    emit(ProfileNotificationUpdateControlsStatus());
  }
  void ChangingOtherControlsStatus(bool currentStatus , int otherControlIdx){
    emit(ProfileNotificationIdleControlsStatus());
    if (currentStatus) {
      if (!otherControlsIndexes.contains(otherControlIdx)) {
        otherControlsIndexes.add(otherControlIdx);
      }
    } else {
      otherControlsIndexes.remove(otherControlIdx);
    }
    log("Selected Other Controls is : ${otherControlsIndexes.length}" , name: "other controls");
    emit(ProfileNotificationUpdateControlsStatus());
  }
}
