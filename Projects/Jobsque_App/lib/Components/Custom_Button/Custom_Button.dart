// ignore_for_file: must_be_immutable, file_names, prefer_null_aware_operators

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
    this.fixedSize,
    this.buttonText,
    this.style,
    this.backgroundColor,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(5.0),
        fixedSize: fixedSize!,
        shape: shape != null ? shape! : null,
        backgroundColor: backgroundColor!,
      ),
      child: Text(
        buttonText!,
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }
}
