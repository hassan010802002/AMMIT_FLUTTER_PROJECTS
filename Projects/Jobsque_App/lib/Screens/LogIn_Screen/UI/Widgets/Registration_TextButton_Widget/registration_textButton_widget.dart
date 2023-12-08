// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

import '../../../../../Config/AppConfig.dart';

class RegistrationTextButtonWidget extends StatefulWidget {
  const RegistrationTextButtonWidget({Key? key}) : super(key: key);

  @override
  _RegistrationTextButtonWidgetState createState() => _RegistrationTextButtonWidgetState();
}

class _RegistrationTextButtonWidgetState extends State<RegistrationTextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        NavigatorHelper(context, AppRoutes.registrationScreen);
      },
      style: ButtonStyle(
        visualDensity: VisualDensity.comfortable,
        fixedSize: MaterialStatePropertyAll(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.5.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.h),
        ),
      ),
      child: Text(
        "Register",
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
