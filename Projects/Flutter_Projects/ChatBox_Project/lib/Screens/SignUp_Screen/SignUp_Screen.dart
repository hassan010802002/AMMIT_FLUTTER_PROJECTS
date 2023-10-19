// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/SignUp_Screen/UI/Views/SignUp_Main_View.dart';
import 'package:flutter/material.dart';

class MySignUp extends StatelessWidget {
  const MySignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUp_Screen();
  }
}

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<StatefulWidget> createState() => _SignUp_Screen_State();
}

class _SignUp_Screen_State extends State<SignUp_Screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        primary: true,
        child: SignUp_Main_View(),
      ),
    );
  }
}
