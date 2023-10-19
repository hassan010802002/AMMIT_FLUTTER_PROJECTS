// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/Custom_Divider/Custom_Divider.dart';
import 'package:flutter/material.dart';

class Divider_Widget extends StatefulWidget {
  const Divider_Widget({super.key});

  @override
  State<Divider_Widget> createState() => _Divider_Widget_State();
}

class _Divider_Widget_State extends State<Divider_Widget> {
  @override
  Widget build(BuildContext context) {
    return const Custom_Divider();
  }
}
