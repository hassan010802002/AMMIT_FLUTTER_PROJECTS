// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/Controller/profile_security_verification_controller_cubit.dart';

import 'UI/Views/ProfileSecurityVerificationMainView.dart';

class ProfileSecurityVerificationScreen extends StatefulWidget {
  final ProfileSecurityVerificationControllerCubit profileSecurityVerificationControllerCubit = ProfileSecurityVerificationControllerCubit();

  ProfileSecurityVerificationScreen({ super.key});

  @override
  State<ProfileSecurityVerificationScreen> createState() => _ProfileSecurityVerificationScreenState();
}

class _ProfileSecurityVerificationScreenState extends State<ProfileSecurityVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => widget.profileSecurityVerificationControllerCubit,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: ProfileSecurityVerificationMainView(profileSecurityVerificationControllerCubit: widget.profileSecurityVerificationControllerCubit),
        ),
      ),
    );
  }
}


