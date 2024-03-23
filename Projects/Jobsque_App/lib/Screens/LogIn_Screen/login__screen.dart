// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/Controller/log_in_cubit.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/UI/Views/AppBar_View/app_bar_view.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/UI/Views/login__main_view.dart';

class LogIn_Screen extends StatefulWidget {
  const LogIn_Screen({super.key});

  @override
  State<LogIn_Screen> createState() => _LogIn_Screen_State();
}

class _LogIn_Screen_State extends State<LogIn_Screen> {
  LogInCubit? cubit;

  @override
  void initState() {
    cubit = LogInCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarView(),
        body: BlocProvider(
          create: (context) => cubit!,
          child: LogIn_MainView(cubit: cubit!),
        ),
      ),
    );
  }
}
