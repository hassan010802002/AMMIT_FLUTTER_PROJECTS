// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/UI/Views/on_boarding_main_view.dart';

import 'Controller/on_boarding_cubit.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingCubit cubit = OnBoardingCubit();

  OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => OnBoardingCubit(),
          child: OnBoardingMainView(cubit: widget.cubit),
        ),
      ),
    );
  }
}
