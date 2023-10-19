// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/LogIn_Screen/UI/Views/LogIn_Main_View.dart';
import 'package:flutter/material.dart';

class MyLogIn extends StatelessWidget {
  const MyLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const LogIn_Screen();
  }
}

class LogIn_Screen extends StatefulWidget {
  const LogIn_Screen({super.key});

  @override
  State<StatefulWidget> createState() => _LogIn_Screen_State();
}

class _LogIn_Screen_State extends State<LogIn_Screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        primary: true,
        child: LogIn_Main_View(),
      ),
    );
  }
}
