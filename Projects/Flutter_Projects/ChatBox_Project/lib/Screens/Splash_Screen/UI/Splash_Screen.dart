// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/Splash_Screen/Controller/Splash_Controller.dart';
import 'package:chatbox_project/Screens/Splash_Screen/UI/Views/Splash_View.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySplash extends StatelessWidget{
  const MySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Splash_Screen();
  }
}

class Splash_Screen extends StatefulWidget{
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_Screen_State();
}

class _Splash_Screen_State extends State<Splash_Screen>{
  Splash_Controller controller = Get.put(Splash_Controller());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Splash_View(),
    );
  }
}