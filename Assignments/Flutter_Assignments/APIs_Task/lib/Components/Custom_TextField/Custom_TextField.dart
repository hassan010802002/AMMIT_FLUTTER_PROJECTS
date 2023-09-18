import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? opscureCharacter , labelText;
  bool? opsecure;
  Color? fillColor;
  TextInputType? keyboardType;
  TextEditingController? controller;

  CustomTextField({
    super.key,
    this.opsecure = false,
    this.opscureCharacter = "*",
    this.fillColor,
    this.keyboardType,
    required this.controller,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      textAlign: TextAlign.center,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Color(0xFF755DC1),
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(
            width: 3,
            color: Color(0xFF837E93),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            width: 3,
            color: Color(0xFF9F7BFF),
          ),
        ),
      ),
      obscureText: opsecure!,
      obscuringCharacter: opscureCharacter!,
      style: const TextStyle(
        color: Color(0xFF393939),
        fontSize: 18,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
