// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Config/AppConfig.dart';
import '../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class CustomTextField extends StatelessWidget {
  bool? opsecure;
  bool? enabled;
  Color? fillColor;
  TextInputType? keyboardType;
  TextEditingController? textEditingController;
  String? hintText;
  TextStyle? hintStyle;
  InputBorder? focusedBorder, enabledBorder;
  Widget? prefixIcon;
  void Function(String)? onChanged;
  void Function(String)? onSubmitted;
  void Function()? onEditingComplete;
  void Function()? onTap;
  Widget? suffixIcon;
  EdgeInsetsGeometry? contentPadding;

  CustomTextField({
    super.key,
    this.opsecure = false,
    this.fillColor,
    this.keyboardType,
    this.textEditingController,
    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.enabledBorder = const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffC5D4F5),
        width: 2.0,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
    ),
    this.focusedBorder = const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffC5D4F5),
        width: 2.0,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
    ),
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.suffixIcon,
    this.onTap,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 15.0,
      vertical: 15.0,
    ),
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      textAlign: TextAlign.start,
      controller: textEditingController,
      decoration: InputDecoration(
        fillColor: fillColor,
        hintText: hintText,
        hintStyle: hintStyle,
        focusedBorder: focusedBorder,
        enabledBorder: enabledBorder,
        filled: true,
        contentPadding: contentPadding,
        prefixIconColor: const Color(0xff292D32),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconConstraints: BoxConstraints.tight(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.5.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.h),
        ),
        suffixIconConstraints: BoxConstraints.tight(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.5.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.h),
        ),
        suffixIconColor: const Color(0xff111827),
      ),
      obscureText: opsecure!,
      style: TextStyle(
        color: const Color(0xff000E08),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontWeight: FontWeight.w600,
        fontFamily: TextFontFamily,
      ),
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onTap: onTap,
      enabled: enabled,
    );
  }
}
