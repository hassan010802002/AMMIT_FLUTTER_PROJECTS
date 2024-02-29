// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Navigator_Helper/Navigator_Helper.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../../../Routes/App_Routes.dart';

class ResetPasswordLogInTextButton extends StatefulWidget {
  const ResetPasswordLogInTextButton({super.key});

  @override
  _ResetPasswordLogInTextButtonState createState() => _ResetPasswordLogInTextButtonState();
}

class _ResetPasswordLogInTextButtonState extends State<ResetPasswordLogInTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        NavigatorHelper(context, AppRoutes.loginScreen);
      },
      style: ButtonStyle(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fixedSize: MaterialStatePropertyAll(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.5.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.h),
        ),
      ),
      child: Text(
        "Login",
        style: TextStyle(
          color: const Color(0xff3366FF),
          fontFamily: TextFontFamily,
          fontWeight: FontWeight.w500,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.w,
        ),
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );
  }
}
