import 'package:flutter/material.dart';

import '../../Consts/SignUpConsts.dart';
import '../../Controllers/SignUp_Controller/SignUp_Controller.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  MaterialStateProperty<Size?>? fixedSize;
  final  controller;
  String buttonText;

  CustomButton({
    super.key,
    required this.controller,
    this.onPressed,
    this.fixedSize = const MaterialStatePropertyAll(Size(380.0, 65)),
    this.buttonText = SignUpConsts.text10,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          elevation: MaterialStatePropertyAll(5.0),
          fixedSize: fixedSize,
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(Color(0xff0B3FA8))),
      child: Text(
        buttonText,
        style: SignUpConsts.text10Style,
        textAlign: TextAlign.center,
      ),
    );
  }
}