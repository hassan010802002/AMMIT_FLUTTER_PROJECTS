// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/CustomTextField/CustomTextField.dart';
import 'package:chatbox_project/Components/Custom_Divider/Custom_Divider.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/Controller/LogIn_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Password_TextField_Widget extends StatefulWidget {
  final LogIn_Controller controller = Get.put(LogIn_Controller());

  Password_TextField_Widget({super.key});

  @override
  State<Password_TextField_Widget> createState() => _Password_TextField_Widget_State();
}

class _Password_TextField_Widget_State extends State<Password_TextField_Widget> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: widget.controller,
      builder: ( controller) {
        return CustomTextField(
          textEditingController: controller.passwordController.value,
          labelText: "Password",
          keyboardType: TextInputType.emailAddress,
          fillColor: Colors.white,
          opsecure: true,
        );
      },
    );
  }
}
