// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Controller/profile_security_phone_number_controller_cubit.dart';
import 'UI/Views/ProfileSecurityPhoneNumberMainView.dart';

class ProfileSecurityPhoneNumberScreen extends StatefulWidget {
  const ProfileSecurityPhoneNumberScreen({super.key});

  @override
  State<ProfileSecurityPhoneNumberScreen> createState() => _ProfileSecurityPhoneNumberScreenState();
}

class _ProfileSecurityPhoneNumberScreenState extends State<ProfileSecurityPhoneNumberScreen> {
  ProfileSecurityPhoneNumberControllerCubit? profileSecurityPhoneNumberControllerCubit;

  @override
  void initState() {
    profileSecurityPhoneNumberControllerCubit = ProfileSecurityPhoneNumberControllerCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => profileSecurityPhoneNumberControllerCubit!,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: ProfileSecurityPhoneNumberMainView(profileSecurityPhoneNumberControllerCubit: profileSecurityPhoneNumberControllerCubit!),
        ),
      ),
    );
  }
}
