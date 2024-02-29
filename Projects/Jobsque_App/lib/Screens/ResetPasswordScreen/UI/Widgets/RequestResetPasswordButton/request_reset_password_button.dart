// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Components/Custom_Button/Custom_Button.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class RequestResetPasswordButton extends StatefulWidget {
  const RequestResetPasswordButton({super.key});

  @override
  _RequestResetPasswordButtonState createState() => _RequestResetPasswordButtonState();
}

class _RequestResetPasswordButtonState extends State<RequestResetPasswordButton> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontFamily: TextFontFamily,
      ),
      onPressed: () {

      },
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0.sp),
        ),
      ),
      backgroundColor: const MaterialStatePropertyAll(Color(0xff3366FF)),
      buttonText: "Request password reset",
      fixedSize: MaterialStatePropertyAll(
        Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 16.0.h),
      ),
    );
  }
}
