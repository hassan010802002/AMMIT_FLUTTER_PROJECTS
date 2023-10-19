// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/Custom_Social_Buttons/Custom_Social_Buttons.dart';
import 'package:flutter/material.dart';

class Social_Buttons_View extends StatefulWidget{
  const Social_Buttons_View({super.key});

  @override
  State<Social_Buttons_View> createState() => _Social_Buttons_View_State();
}

class _Social_Buttons_View_State extends State<Social_Buttons_View>{
  @override
  Widget build(BuildContext context) {
    return const Custom_Social_Buttons();
  }
}