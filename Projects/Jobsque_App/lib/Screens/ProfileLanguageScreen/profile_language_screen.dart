// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/ProfileLanguageScreen/Controller/profile_language_controller_cubit.dart';

import 'UI/Views/ProfileLanguageMainView.dart';

class ProfileLanguageScreen extends StatefulWidget {
  const ProfileLanguageScreen({super.key});

  @override
  State<ProfileLanguageScreen> createState() => _ProfileLanguageScreenState();
}

class _ProfileLanguageScreenState extends State<ProfileLanguageScreen> {
  ProfileLanguageControllerCubit? profileLanguageControllerCubit;

  @override
  void initState() {
    profileLanguageControllerCubit = ProfileLanguageControllerCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => profileLanguageControllerCubit!,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: ProfileLanguageMainView(profileLanguageControllerCubit: profileLanguageControllerCubit!),
        ),
      ),
    );
  }
}
