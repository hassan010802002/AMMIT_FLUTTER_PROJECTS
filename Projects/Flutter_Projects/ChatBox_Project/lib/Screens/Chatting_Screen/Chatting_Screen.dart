// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/Chatting_Screen/UI/Views/Chatting_APP_Bar_View/Chatting_APP_Bar_View.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/UI/Views/Chatting_Main_View.dart';
import 'package:flutter/material.dart';

class MyChatting extends StatelessWidget{
  const MyChatting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Chatting_Screen();
  }
}

class Chatting_Screen extends StatefulWidget{
  const Chatting_Screen({super.key});

  @override
  State<Chatting_Screen> createState() => _Chatting_Screen_State();
}

class _Chatting_Screen_State extends State<Chatting_Screen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      appBar: Chatting_APP_Bar_View(),
      body: const Chatting_Main_View(),
    );
  }
}