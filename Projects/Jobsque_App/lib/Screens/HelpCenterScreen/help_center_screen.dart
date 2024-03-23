// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/HelpCenterScreen/Controller/help_center_controller_cubit.dart';
import 'package:jobsque_app/Screens/HelpCenterScreen/UI/Views/HelpCenterMainView.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  HelpCenterControllerCubit? helpCenterControllerCubit;

  @override
  void initState() {
    helpCenterControllerCubit = HelpCenterControllerCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => helpCenterControllerCubit!),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: HelpCenterMainView(helpCenterControllerCubit: helpCenterControllerCubit!),
        ),
      ),
    );
  }
}
