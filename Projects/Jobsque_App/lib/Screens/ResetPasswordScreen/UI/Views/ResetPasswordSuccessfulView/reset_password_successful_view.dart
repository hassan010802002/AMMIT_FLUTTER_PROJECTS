// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordSuccessfulLogo/reset_password_successful_logo.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordText10/reset_password_text10.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordText11/reset_password_text11.dart';

class ResetPasswordSuccessfulView extends StatefulWidget {
  const ResetPasswordSuccessfulView({super.key});

  @override
  _ResetPasswordSuccessfulViewState createState() => _ResetPasswordSuccessfulViewState();
}

class _ResetPasswordSuccessfulViewState extends State<ResetPasswordSuccessfulView> {
  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResetPasswordSuccessfulLogo(),
          ResetPasswordText10(),
          ResetPasswordText11(),
        ],
      ),
    );
  }
}
