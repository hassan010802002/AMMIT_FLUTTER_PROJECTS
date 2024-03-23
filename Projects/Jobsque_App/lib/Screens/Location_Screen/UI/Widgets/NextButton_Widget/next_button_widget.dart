// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/Custom_Button/Custom_Button.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

import '../../../../../Config/AppConfig.dart';

class NextButtonWidget extends StatefulWidget {
  const NextButtonWidget({super.key});

  @override
  _NextButtonWidgetState createState() => _NextButtonWidgetState();
}

class _NextButtonWidgetState extends State<NextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
        color: Colors.white,
      ),
      buttonText: "Next",
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0.sp),
        ),
      ),
      onPressed: () {
        NavigatorHelper(context, AppRoutes.successScreen);
      },
      fixedSize: MaterialStatePropertyAll(Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 16.0.h)),
      backgroundColor: const MaterialStatePropertyAll(Color(0xff3366FF)),
    );
  }
}
