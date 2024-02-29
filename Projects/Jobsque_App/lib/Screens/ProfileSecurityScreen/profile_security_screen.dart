// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/ProfileLanguageScreen/Controller/profile_language_controller_cubit.dart';
import 'package:jobsque_app/Screens/ProfileNotificationScreen/Controller/profile_notification_controller_cubit.dart';
import 'package:jobsque_app/Screens/ProfileSecurityScreen/Controller/profile_security_controller_cubit.dart';
import 'UI/Views/ProfileSecurityMainView.dart';

class ProfileSecurityScreen extends StatefulWidget {
  final ProfileSecurityControllerCubit profileSecurityControllerCubit = ProfileSecurityControllerCubit();

  ProfileSecurityScreen({ super.key});

  @override
  State<ProfileSecurityScreen> createState() => _ProfileSecurityScreenState();
}

class _ProfileSecurityScreenState extends State<ProfileSecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => widget.profileSecurityControllerCubit,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: ProfileSecurityMainView(profileSecurityControllerCubit: widget.profileSecurityControllerCubit),
        ),
      ),
    );
  }
}


