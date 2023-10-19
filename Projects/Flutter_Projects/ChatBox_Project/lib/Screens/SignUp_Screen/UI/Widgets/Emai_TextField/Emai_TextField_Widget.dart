// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/CustomTextField/CustomTextField.dart';
import 'package:flutter/material.dart';

class Emai_TextField_Widget extends StatefulWidget {
  const Emai_TextField_Widget({super.key});

  @override
  State<Emai_TextField_Widget> createState() => _Emai_TextField_Widget_State();
}

class _Emai_TextField_Widget_State extends State<Emai_TextField_Widget> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      labelText: "Your email",
      keyboardType: TextInputType.emailAddress,
      fillColor: Colors.white,
      opsecure: false,
    );
  }
}
