import 'package:flutter/material.dart';
import 'package:lamaiti/Consts/LogInConsts.dart';

class CustomTextField extends StatelessWidget {
  String hintText , opscureCharacter;
  IconData icon;
  bool opsecure;
  int lenght;

  CustomTextField({
    super.key,
    this.hintText = "Something@Example.com",
    this.icon = Icons.email_rounded,
    this.opsecure = false,
    this.opscureCharacter = "*",
    this.lenght = 50
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        fillColor: Color(0xffE1E6F1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
          color: Colors.blueGrey,
        ),
        prefixIcon: Icon(icon, color: Colors.blueGrey),
        filled: true,
      ),
      obscureText: opsecure,
      obscuringCharacter: opscureCharacter,
      style: LogInConsts.textFieldStyle1,
      maxLines: 1,
      maxLength: lenght,
    );
  }
}
