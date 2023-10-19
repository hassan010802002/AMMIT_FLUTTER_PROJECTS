// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/CustomTextField/CustomTextField.dart';
import 'package:flutter/material.dart';

class Name_TextField_Widget extends StatefulWidget {
  const Name_TextField_Widget({super.key});

  @override
  State<Name_TextField_Widget> createState() => _Name_TextField_Widget_State();
}

class _Name_TextField_Widget_State extends State<Name_TextField_Widget> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      labelText: "Your name",
      keyboardType: TextInputType.name,
      fillColor: Colors.white,
      opsecure: false,
    );
  }
}
