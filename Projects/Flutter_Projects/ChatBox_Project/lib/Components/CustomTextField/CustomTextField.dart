// ignore_for_file: must_be_immutable

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  String? labelText;
  bool? opsecure, isEnabled;
  Color? fillColor;
  TextInputType? keyboardType;
  TextEditingController? textEditingController;

  CustomTextField({
    super.key,
    this.labelText,
    this.opsecure = false,
    this.fillColor,
    this.isEnabled = true,
    this.keyboardType,
    this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      textAlign: TextAlign.start,
      controller: textEditingController,
      decoration: InputDecoration(
        fillColor: fillColor,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffC5D4F5),
            width: 2.0,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffC5D4F5),
            width: 2.0,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffC5D4F5),
            width: 2.0,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
        ),
        labelText: labelText,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        floatingLabelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/25.0.w,
            color: const Color(0xff24786D),
            fontFamily: "Circular Std"
        ),
        labelStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/30.0.w,
          color: const Color(0xff24786D),
          fontFamily: "Circular Std"
        ),
        filled: true,
      ),
      obscureText: opsecure!,
      style: TextStyle(
        color: const Color(0xff000E08),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/20.0.w,
        fontWeight: FontWeight.w600,
        fontFamily: "Caros",
      ),
      enabled: isEnabled,
    );
  }
}
