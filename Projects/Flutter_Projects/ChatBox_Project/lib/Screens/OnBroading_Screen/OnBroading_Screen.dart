// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Views/OnBroading_Main_View.dart';
import 'package:flutter/material.dart';

class MyOnBroading extends StatelessWidget{
  const MyOnBroading({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnBroading_Screen();
  }
}

class OnBroading_Screen extends StatefulWidget{
  const OnBroading_Screen({super.key});

  @override
  State<OnBroading_Screen> createState() => _OnBroading_Screen_State();
}

class _OnBroading_Screen_State extends State<OnBroading_Screen>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBroading_Main_View(),
      primary: true,
    );
  }
}