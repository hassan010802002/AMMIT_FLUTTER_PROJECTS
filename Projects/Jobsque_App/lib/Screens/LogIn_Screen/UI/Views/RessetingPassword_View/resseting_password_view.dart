// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/UI/Widgets/RememberPasswordBox_Label/remember_password_box_label.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/UI/Widgets/RememberPassword_Box/remember_password_box.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/UI/Widgets/ResettingPassword_Button/resetting_password_button.dart';

import '../../../Controller/log_in_cubit.dart';

class RessetingPasswordView extends StatefulWidget {
  final LogInCubit cubit;

  const RessetingPasswordView({Key? key, required this.cubit}) : super(key: key);

  @override
  _RessetingPasswordViewState createState() => _RessetingPasswordViewState();
}

class _RessetingPasswordViewState extends State<RessetingPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RememberPasswordBox(cubit: widget.cubit),
            const RememberPasswordBoxLabel(),
          ],
        ),
        const ResettingPasswordButton(),
      ],
    );
  }
}
