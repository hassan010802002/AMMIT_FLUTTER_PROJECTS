// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/ProfileNotificationScreen/Controller/profile_notification_controller_cubit.dart';

import 'UI/Views/ProfileNotificationMainView.dart';

class ProfileNotificationScreen extends StatefulWidget {
  const ProfileNotificationScreen({super.key});

  @override
  State<ProfileNotificationScreen> createState() => _ProfileNotificationScreenState();
}

class _ProfileNotificationScreenState extends State<ProfileNotificationScreen> {
  ProfileNotificationControllerCubit? profileNotificationControllerCubit;

  @override
  void initState() {
    profileNotificationControllerCubit = ProfileNotificationControllerCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => profileNotificationControllerCubit!,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: ProfileNotificationMainView(profileNotificationControllerCubit: profileNotificationControllerCubit!),
        ),
      ),
    );
  }
}
