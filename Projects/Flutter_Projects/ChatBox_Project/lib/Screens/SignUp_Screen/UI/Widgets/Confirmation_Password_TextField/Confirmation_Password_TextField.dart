// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/CustomTextField/CustomTextField.dart';
import 'package:chatbox_project/Components/Custom_Divider/Custom_Divider.dart';
import 'package:flutter/material.dart';

class Confirmation_Password_TextField extends StatefulWidget {
  const Confirmation_Password_TextField({super.key});

  @override
  State<Confirmation_Password_TextField> createState() => _Confirmation_Password_TextField_State();
}

class _Confirmation_Password_TextField_State extends State<Confirmation_Password_TextField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      labelText: "Confirm Password",
      keyboardType: TextInputType.name,
      fillColor: Colors.white,
      opsecure: true,
    );
  }
}
