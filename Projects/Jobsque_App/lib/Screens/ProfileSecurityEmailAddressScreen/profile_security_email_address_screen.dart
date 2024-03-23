// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/ProfileSecurityEmailAddressScreen/Controller/profile_security_email_address_controller_cubit.dart';

import 'UI/Views/ProfileSecurityEmailAddressMainView.dart';

class ProfileSecurityEmailAddressScreen extends StatefulWidget {
  const ProfileSecurityEmailAddressScreen({super.key});

  @override
  State<ProfileSecurityEmailAddressScreen> createState() => _ProfileSecurityEmailAddressScreenState();
}

class _ProfileSecurityEmailAddressScreenState extends State<ProfileSecurityEmailAddressScreen> {
  ProfileSecurityEmailAddressControllerCubit? profileSecurityEmailAddressControllerCubit;

  @override
  void initState() {
    profileSecurityEmailAddressControllerCubit = ProfileSecurityEmailAddressControllerCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => profileSecurityEmailAddressControllerCubit!,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: ProfileSecurityEmailAddressMainView(profileSecurityEmailAddressControllerCubit: profileSecurityEmailAddressControllerCubit!),
        ),
      ),
    );
  }
}
