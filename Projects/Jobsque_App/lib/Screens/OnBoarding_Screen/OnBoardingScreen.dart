// ignore_for_file: library_private_types_in_public_api, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/UI/Views/on_boarding_main_view.dart';

import 'Controller/on_boarding_cubit.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  OnBoardingCubit? cubit;

  @override
  void initState() {
    cubit = OnBoardingCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => cubit!,
          child: OnBoardingMainView(cubit: cubit!),
        ),
      ),
    );
  }
}
