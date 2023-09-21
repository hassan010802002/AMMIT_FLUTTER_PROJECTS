import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  MaterialStateProperty<Size?>? fixedSize;
  final String? buttonText;
  final TextStyle? style;
  final MaterialStateProperty<Color?>? backgroundColor;

  final MaterialStateProperty<OutlinedBorder?>? shape;

  CustomButton({
    super.key,
    this.onPressed,
    this.fixedSize = const MaterialStatePropertyAll(Size(380.0, 65)),
    this.buttonText,
    this.style ,
    this.backgroundColor = const MaterialStatePropertyAll(Color(0xff0B3FA8)),
    this.shape = const MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(60.0),
        ),
      ),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          elevation: MaterialStatePropertyAll(5.0),
          fixedSize: fixedSize,
          shape: shape,
          backgroundColor: backgroundColor),
      child: Text(
        buttonText!,
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }
}
