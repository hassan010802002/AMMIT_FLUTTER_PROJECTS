import 'package:application_4/Consts/LogIn_Consts/LogIn_Consts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final MaterialStateProperty<Size?>? fixedSize;
  final String buttonText;
  final TextStyle? style;
  final MaterialStateProperty<Color?>? backgroundColor;

  const CustomButton({
    super.key,
    this.onPressed,
    this.fixedSize = const MaterialStatePropertyAll(Size(355.0, 60)),
    this.buttonText = "Sign In",
    this.style = LogIn_Consts.text10Style,
    this.backgroundColor = const MaterialStatePropertyAll(Color(0xFF9F7BFF)),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStatePropertyAll(5.0),
        fixedSize: fixedSize,
        backgroundColor: backgroundColor,
      ),
      child: Text(
        buttonText,
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }
}
