// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Components/CustomTextField/CustomTextField.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class HelpCenterTextField extends StatefulWidget {
  const HelpCenterTextField({super.key});

  @override
  _HelpCenterTextFieldState createState() => _HelpCenterTextFieldState();
}

class _HelpCenterTextFieldState extends State<HelpCenterTextField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      fillColor: Colors.white,
      textEditingController: TextEditingController(),
      prefixIcon: Icon(
        FontAwesomeIcons.magnifyingGlass,
        size: 24.0.sp,
      ),
      keyboardType: TextInputType.name,
      hintText: "What can we help?",
      hintStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: const Color(0xff9CA3AF),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontFamily: TextFontFamily,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(45.0.sp),
        borderSide: BorderSide(
          color: const Color(0xffD1D5DB),
          strokeAlign: BorderSide.strokeAlignOutside,
          width: 1.5.w,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(45.0.sp),
        borderSide: BorderSide(
          color: const Color(0xffD1D5DB),
          strokeAlign: BorderSide.strokeAlignOutside,
          width: 1.5.w,
        ),
      ),
    );
  }
}
