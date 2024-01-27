// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/Custom_Button/Custom_Button.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

class StartingButtonWidget extends StatefulWidget {
  const StartingButtonWidget({Key? key}) : super(key: key);

  @override
  _StartingButtonWidgetState createState() => _StartingButtonWidgetState();
}

class _StartingButtonWidgetState extends State<StartingButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      style: TextStyle(
        color: Colors.white,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
      ),
      backgroundColor: const MaterialStatePropertyAll(Color(0xff3366FF)),
      fixedSize: MaterialStatePropertyAll(
        Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!.w, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 16.0.h),
      ),
      onPressed: () {
        NavigatorHelper(context, AppRoutes.homeScreen);
      },
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0.sp),
        ),
      ),
      buttonText: "Get Started",
    );
  }
}
