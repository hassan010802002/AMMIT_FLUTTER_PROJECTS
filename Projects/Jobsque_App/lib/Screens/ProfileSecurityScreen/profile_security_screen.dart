// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/ProfileSecurityScreen/Controller/profile_security_controller_cubit.dart';

import 'UI/Views/ProfileSecurityMainView.dart';

class ProfileSecurityScreen extends StatefulWidget {
  const ProfileSecurityScreen({super.key});

  @override
  State<ProfileSecurityScreen> createState() => _ProfileSecurityScreenState();
}

class _ProfileSecurityScreenState extends State<ProfileSecurityScreen> {
  ProfileSecurityControllerCubit? profileSecurityControllerCubit;

  @override
  void initState() {
    profileSecurityControllerCubit = ProfileSecurityControllerCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => profileSecurityControllerCubit!,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: ProfileSecurityMainView(profileSecurityControllerCubit: profileSecurityControllerCubit!),
        ),
      ),
    );
  }
}
