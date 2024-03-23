// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/UI/Widgets/Registration_TextButton_Widget/registration_textButton_widget.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/UI/Widgets/Text4_Widget/text4_widget.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  _RegistrationViewState createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text4Widget(), RegistrationTextButtonWidget()],
    );
  }
}
