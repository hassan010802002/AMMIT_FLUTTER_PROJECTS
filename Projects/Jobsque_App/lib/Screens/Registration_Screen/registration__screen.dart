// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Controller/registration_cubit.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Views/AppBar_View/app_bar_view.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Views/registration__main_view.dart';

class Registration_Screen extends StatefulWidget {
  const Registration_Screen({super.key});

  @override
  State<Registration_Screen> createState() => _Registration_Screen_State();
}

class _Registration_Screen_State extends State<Registration_Screen> {
  RegistrationCubit? cubit;

  @override
  void initState() {
    cubit = RegistrationCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarView(),
        body: BlocProvider(
          create: (context) => cubit!,
          child: Registration_MainView(cubit: cubit!),
        ),
      ),
    );
  }
}
