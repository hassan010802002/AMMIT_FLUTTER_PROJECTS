// ignore_for_file: library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';


class TextWidget2 extends StatefulWidget {
  const TextWidget2({Key? key}) : super(key: key);

  @override
  _TextWidget2State createState() => _TextWidget2State();
}

class _TextWidget2State extends State<TextWidget2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      RegistrationConsts.text10,
      style: RegistrationConsts.style10(context),
      textAlign: TextAlign.justify,
      softWrap: true,
    );
  }
}
