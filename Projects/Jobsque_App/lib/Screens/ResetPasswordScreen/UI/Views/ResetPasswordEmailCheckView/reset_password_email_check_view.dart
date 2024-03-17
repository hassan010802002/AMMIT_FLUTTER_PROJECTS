// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordEmailCheckLogo/reset_password_email_check_logo.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordText4/reset_password_text4.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordText5/reset_password_text5.dart';

class ResetPasswordEmailCheckView extends StatefulWidget {
  const ResetPasswordEmailCheckView({super.key});

  @override
  _ResetPasswordEmailCheckViewState createState() => _ResetPasswordEmailCheckViewState();
}

class _ResetPasswordEmailCheckViewState extends State<ResetPasswordEmailCheckView> {
  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResetPasswordEmailCheckLogo(),
          ResetPasswordText4(),
          ResetPasswordText5(),
        ],
      ),
    );
  }
}
