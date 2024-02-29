// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/Controller/reset_password_controller_bloc.dart';

import 'UI/Views/ResetPasswordMainView.dart';

class ResetPasswordScreen extends StatefulWidget {
  final ResetPasswordControllerBloc resetPasswordControllerBloc = ResetPasswordControllerBloc();

  ResetPasswordScreen({ super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => widget.resetPasswordControllerBloc,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: ResetPasswordMainView(resetPasswordControllerBloc: widget.resetPasswordControllerBloc),
        ),
      ),
    );
  }
}


