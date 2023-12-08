// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/CustomTextField/CustomTextField.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/Consts/LogIn_Consts.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/Controller/LogIn_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Emai_TextField_Widget extends StatefulWidget {
  final LogIn_Controller controller = Get.put(LogIn_Controller());

  Emai_TextField_Widget({super.key});

  @override
  State<Emai_TextField_Widget> createState() => _Emai_TextField_Widget_State();
}

class _Emai_TextField_Widget_State extends State<Emai_TextField_Widget> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: widget.controller,
      builder: ( controller) {
        return CustomTextField(
          textEditingController: controller.emailController.value,
          labelText: LogIn_Consts.text2,
          keyboardType: TextInputType.emailAddress,
          fillColor: LogIn_Consts.color2,
          opsecure: false,
        );
      },
    );
  }
}
