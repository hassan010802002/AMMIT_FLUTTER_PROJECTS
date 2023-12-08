// ignore_for_file: camel_case_types

import 'package:chatbox_project/Components/CustomTextField/CustomTextField.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/Consts/SignUp_Consts.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/Controller/SignUp_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Name_TextField_Widget extends StatefulWidget {
  final SignUp_Controller controller = Get.put(SignUp_Controller());

  Name_TextField_Widget({super.key});

  @override
  State<Name_TextField_Widget> createState() => _Name_TextField_Widget_State();
}

class _Name_TextField_Widget_State extends State<Name_TextField_Widget> {
  @override
  Widget build(BuildContext context) {
    return GetX<SignUp_Controller>(
      init: widget.controller,
      builder: (logic) {
        return CustomTextField(
          textEditingController: logic.nameController.value,
          labelText: SignUp_Consts.text3,
          keyboardType: TextInputType.name,
          fillColor: SignUp_Consts.color2,
          opsecure: false,
        );
      },
    );
  }
}
