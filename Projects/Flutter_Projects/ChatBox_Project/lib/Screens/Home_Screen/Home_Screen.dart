// ignore_for_file: camel_case_types

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
    return const Scaffold(
      primary: true,

    );
  }
}