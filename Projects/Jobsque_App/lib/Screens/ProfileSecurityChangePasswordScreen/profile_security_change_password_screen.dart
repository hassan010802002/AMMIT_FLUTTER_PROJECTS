// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/ProfileSecurityChangePasswordScreen/Controller/profile_security_change_password_controller_bloc.dart';

import 'UI/Views/ProfileSecurityChangePasswordMainView.dart';

class ProfileSecurityChangePasswordScreen extends StatefulWidget {
  const ProfileSecurityChangePasswordScreen({super.key});

  @override
  State<ProfileSecurityChangePasswordScreen> createState() => _ProfileSecurityChangePasswordScreenState();
}

class _ProfileSecurityChangePasswordScreenState extends State<ProfileSecurityChangePasswordScreen> {
  ProfileSecurityChangePasswordControllerBloc? profileSecurityChangePasswordControllerBloc;

  @override
  void initState() {
    profileSecurityChangePasswordControllerBloc = ProfileSecurityChangePasswordControllerBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => profileSecurityChangePasswordControllerBloc!,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: ProfileSecurityChangePasswordMainView(profileSecurityChangePasswordControllerBloc: profileSecurityChangePasswordControllerBloc!),
        ),
      ),
    );
  }
}
