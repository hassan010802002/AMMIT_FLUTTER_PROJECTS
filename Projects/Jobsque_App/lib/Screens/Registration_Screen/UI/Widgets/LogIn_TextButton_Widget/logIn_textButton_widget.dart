// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

import '../../../../../Config/AppConfig.dart';

class LogInTextButtonWidget extends StatefulWidget {
  const LogInTextButtonWidget({Key? key}) : super(key: key);

  @override
  _LogInTextButtonWidgetState createState() => _LogInTextButtonWidgetState();
}

class _LogInTextButtonWidgetState extends State<LogInTextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        NavigatorHelper(context, AppRoutes.loginScreen);
      },
      style: ButtonStyle(
        visualDensity: VisualDensity.comfortable,
        fixedSize: MaterialStatePropertyAll(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.0.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.h),
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
