import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  IconData? icon ;
  Color? fillColor;
  TextInputType? keyboardType;
  TextStyle? style;
  TextEditingController? controller;
  void Function(String)? onSubmitted;

  CustomTextField({
    super.key,
    this.hintText,
    this.icon ,
    this.fillColor,
    this.style,
    this.keyboardType,
    required this.controller,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      textAlign: TextAlign.center,
      controller: controller!,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(
            color:const Color(0xff1C1B33),
            width: 1.5.w,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color:const Color(0xff1C1B33),
            width: 1.5.w,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
          color: Colors.blueGrey,
          fontFamily: "SF Pro Display",
        ),
        prefixIcon: icon != null? Icon(icon, color: Colors.blueGrey) : null,
        filled: true,
        contentPadding: EdgeInsets.all(10.0.sp),
        focusedBorder: UnderlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(
            color:const Color(0xff1C1B33),
            width: 1.5.w,
          ),
        )
      ),
      style: style,
      onSubmitted: onSubmitted,
    );
  }
}
