// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Controller/privacy_policy_controller_cubit.dart';
import 'UI/Views/PrivacyPolicyMainView.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  final PrivacyPolicyControllerCubit privacyPolicyControllerCubit = PrivacyPolicyControllerCubit();

  PrivacyPolicyScreen({ super.key });

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => widget.privacyPolicyControllerCubit),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: PrivacyPolicyMainView(privacyPolicyControllerCubit: widget.privacyPolicyControllerCubit),
        ),
      ),
    );
  }
}


