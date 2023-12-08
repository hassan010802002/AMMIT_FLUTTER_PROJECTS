// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Screens/Home_Screen/Controller/Home_Controller.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Views/APP_Bar_View/APP_Bar_View.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Views/Home_Main_View.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  final Home_Controller home_controller = Get.put(Home_Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      appBar: APP_Bar_View(),
      body: Home_Main_View(home_controller: home_controller),
    );
  }
}