// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResettingPasswordButton extends StatefulWidget {
  const ResettingPasswordButton({super.key});

  @override
  _ResettingPasswordButtonState createState() => _ResettingPasswordButtonState();
}

class _ResettingPasswordButtonState extends State<ResettingPasswordButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        NavigatorHelper(context, AppRoutes.resetPasswordScreen);
      },
      child: Text(
        "Forgot Password?",
        style: TextStyle(
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
          fontWeight: FontWeight.w500,
          fontFamily: TextFontFamily,
          color: const Color(0xff3366FF),
        ),
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );
  }
}
