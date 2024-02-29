// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/ProfileLanguageScreen/Controller/profile_language_controller_cubit.dart';
import 'package:jobsque_app/Screens/ProfileNotificationScreen/Controller/profile_notification_controller_cubit.dart';
import 'UI/Views/ProfileNotificationMainView.dart';

class ProfileNotificationScreen extends StatefulWidget {
  final ProfileNotificationControllerCubit profileNotificationControllerCubit = ProfileNotificationControllerCubit();

  ProfileNotificationScreen({ super.key});

  @override
  State<ProfileNotificationScreen> createState() => _ProfileNotificationScreenState();
}

class _ProfileNotificationScreenState extends State<ProfileNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => widget.profileNotificationControllerCubit,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: ProfileNotificationMainView(profileNotificationControllerCubit: widget.profileNotificationControllerCubit),
        ),
      ),
    );
  }
}


