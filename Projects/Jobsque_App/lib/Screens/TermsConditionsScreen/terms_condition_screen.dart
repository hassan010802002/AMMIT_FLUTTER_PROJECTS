// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/TermsConditionsScreen/UI/Views/TermsConditionsMainView.dart';

import 'Controller/terms_conditions_controller_cubit.dart';

class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({super.key});

  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  TermsConditionsControllerCubit? termsConditionsControllerCubit;

  @override
  void initState() {
    termsConditionsControllerCubit = TermsConditionsControllerCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => termsConditionsControllerCubit!),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: TermsConditionsMainView(termsConditionsControllerCubit: termsConditionsControllerCubit!),
        ),
      ),
    );
  }
}
