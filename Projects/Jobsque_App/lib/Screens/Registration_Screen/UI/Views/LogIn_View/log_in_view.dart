// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/LogIn_TextButton_Widget/logIn_textButton_widget.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Text4_Widget/text4_widget.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  _LogInViewState createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text4Widget(),
        LogInTextButtonWidget()
      ],
    );
  }
}
