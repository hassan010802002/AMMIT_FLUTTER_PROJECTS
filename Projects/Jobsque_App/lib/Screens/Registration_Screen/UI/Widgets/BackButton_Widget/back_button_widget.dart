// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';

class BackButtonWidget extends StatefulWidget {
  const BackButtonWidget({super.key});

  @override
  _BackButtonWidgetState createState() => _BackButtonWidgetState();
}

class _BackButtonWidgetState extends State<BackButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return BackButton(
      onPressed: () {},
      color: RegistrationConsts.blackColor,
      style: RegistrationConsts.buttonStyle1,
    );
  }
}
