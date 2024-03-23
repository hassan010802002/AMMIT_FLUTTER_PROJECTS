// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Controller/privacy_policy_controller_cubit.dart';
import 'UI/Views/PrivacyPolicyMainView.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  PrivacyPolicyControllerCubit? privacyPolicyControllerCubit;

  @override
  void initState() {
    privacyPolicyControllerCubit = PrivacyPolicyControllerCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => privacyPolicyControllerCubit!),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: PrivacyPolicyMainView(privacyPolicyControllerCubit: privacyPolicyControllerCubit!),
        ),
      ),
    );
  }
}
