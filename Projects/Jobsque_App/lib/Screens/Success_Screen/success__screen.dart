import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Success_Screen/Controller/success_cubit.dart';
import 'package:jobsque_app/Screens/Success_Screen/UI/Views/Success_MainView.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  SuccessCubit? cubit;

  @override
  void initState() {
    cubit = SuccessCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        primary: true,
        body: BlocProvider(
          create: (context) => cubit!,
          child: Success_MainView(cubit: cubit!),
        ),
      ),
    );
  }
}
