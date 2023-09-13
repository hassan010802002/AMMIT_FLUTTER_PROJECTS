import 'package:flutter/material.dart';
import 'package:lamaiti/Consts/LogInConsts.dart';

class CustomTextField extends StatelessWidget {
  String? hintText , opscureCharacter , contentText;
  IconData? icon , sufIcon;
  bool? opsecure , isEnabled , isReadOnly;
  int? lenght , maxLines;
  Color? fillColor;
  void Function()? onTap;
  TextInputType? keyboardType;

  CustomTextField({
    super.key,
    this.hintText = "Something@Example.com",
    this.icon ,
    this.opsecure = false,
    this.opscureCharacter = "*",
    this.lenght = 50,
    this.fillColor = const Color(0xffE1E6F1),
    this.isEnabled = true,
    this.maxLines = 1,
    this.isReadOnly = false,
    this.onTap,
    this.contentText,
    this.sufIcon,
    this.keyboardType
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      textAlign: TextAlign.center,
      controller: TextEditingController(text: contentText),
      readOnly: isReadOnly!,
      onTap: onTap,
      decoration: InputDecoration(
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color:Color(0xffC5D4F5),
            width: 3.0,
          )
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
          color: Colors.blueGrey,
        ),
        prefixIcon: icon != null? Icon(icon, color: Colors.blueGrey) : null,
        suffixIcon: sufIcon != null? Icon(sufIcon, color: Colors.blueGrey) : null,
        filled: true,
      ),
      obscureText: opsecure!,
      obscuringCharacter: opscureCharacter!,
      style: LogInConsts.textFieldStyle1,
      maxLines: maxLines,
      maxLength: lenght,
      enabled: isEnabled,
    );
  }
}
