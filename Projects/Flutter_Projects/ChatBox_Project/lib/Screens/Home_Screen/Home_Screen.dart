// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/Home_Screen/UI/Views/APP_Bar_View/APP_Bar_View.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Views/Home_Main_View.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget{
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home_Screen();
  }
}

class Home_Screen extends StatefulWidget{
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_Screen_State();
}

class _Home_Screen_State extends State<Home_Screen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      appBar: APP_Bar_View(),
      body: const Home_Main_View(),
    );
  }
}