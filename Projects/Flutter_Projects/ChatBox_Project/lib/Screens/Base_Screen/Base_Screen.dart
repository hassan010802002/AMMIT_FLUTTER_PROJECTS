// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/Base_Screen/UI/Views/Bottom_NavigationBar_View/Bottom_NavigationBar_View.dart';
import 'package:flutter/material.dart';

class MyBase extends StatelessWidget{
  const MyBase({super.key});

  @override
  Widget build(BuildContext context) {
    return const Base_Screen();
  }
}

class Base_Screen extends StatefulWidget{
  const Base_Screen({super.key});

  @override
  State<Base_Screen> createState() => _Base_Screen_State();
}

class _Base_Screen_State extends State<Base_Screen>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      primary: true,
      bottomNavigationBar: Bottom_NavigationBar_View(),
    );
  }
}