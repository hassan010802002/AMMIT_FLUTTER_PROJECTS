// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';


class DividerTextWidget extends StatefulWidget {
  const DividerTextWidget({Key? key}) : super(key: key);

  @override
  _DividerTextWidgetState createState() => _DividerTextWidgetState();
}

class _DividerTextWidgetState extends State<DividerTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      RegistrationConsts.text1,
      softWrap: true,
      textAlign: TextAlign.justify,
      style: RegistrationConsts.style1(context),
    );
  }
}
