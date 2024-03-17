// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPinCodeField extends StatefulWidget {
  const VerificationPinCodeField({super.key});

  @override
  _VerificationPinCodeFieldState createState() => _VerificationPinCodeFieldState();
}

class _VerificationPinCodeFieldState extends State<VerificationPinCodeField> {
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      controller: TextEditingController(),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      backgroundColor: Colors.white,
      keyboardType: TextInputType.number,
      textStyle: TextStyle(
        color: const Color(0xff222741),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontWeight: FontWeight.w600,
      ),
      animationDuration: const Duration(milliseconds: 200),
      animationType: AnimationType.scale,
      autoDisposeControllers: false,
      enableActiveFill: true,
      autoDismissKeyboard: false,
      autoUnfocus: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      pinTheme: PinTheme(
        borderRadius: BorderRadius.circular(12.0.sp),
        borderWidth: 1.5.w,
        shape: PinCodeFieldShape.box,
        fieldWidth: MediaQuery_Size_Helper.MAX_WIDTH(context)!/8.0.w,
        activeFillColor: Colors.white,
        activeBorderWidth: 1.5.w,
        selectedBorderWidth: 1.5.w,
        selectedFillColor: Colors.white,
        activeColor: const Color(0xffD1D5DB),
        inactiveColor: const Color(0xffD1D5DB),
        selectedColor: const Color(0xff3366ff),
        inactiveFillColor: Colors.white,
        inactiveBorderWidth: 1.5.w,
      ),
      blinkWhenObscuring: true,
    );
  }
}
