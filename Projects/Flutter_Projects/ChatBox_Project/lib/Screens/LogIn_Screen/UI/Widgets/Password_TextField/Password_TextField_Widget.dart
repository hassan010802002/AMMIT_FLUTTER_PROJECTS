// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/CustomTextField/CustomTextField.dart';
import 'package:chatbox_project/Components/Custom_Divider/Custom_Divider.dart';
import 'package:flutter/material.dart';

class Password_TextField_Widget extends StatefulWidget {
  const Password_TextField_Widget({super.key});

  @override
  State<Password_TextField_Widget> createState() => _Password_TextField_Widget_State();
}

class _Password_TextField_Widget_State extends State<Password_TextField_Widget> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      labelText: "Password",
      keyboardType: TextInputType.emailAddress,
      fillColor: Colors.white,
      opsecure: true,
    );
  }
}
