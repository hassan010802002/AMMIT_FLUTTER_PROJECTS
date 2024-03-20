// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';


class LogInTextButtonWidget extends StatefulWidget {
  const LogInTextButtonWidget({Key? key}) : super(key: key);

  @override
  _LogInTextButtonWidgetState createState() => _LogInTextButtonWidgetState();
}

class _LogInTextButtonWidgetState extends State<LogInTextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        NavigatorHelper(context, AppRoutes.loginScreen);
      },
      style: RegistrationConsts.buttonStyle4(context),
      child: Text(
        RegistrationConsts.text5,
        style: RegistrationConsts.style5(context),
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );
  }
}
