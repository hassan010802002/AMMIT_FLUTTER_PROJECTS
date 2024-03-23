// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/Custom_Button/Custom_Button.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class NextButtonWidget extends StatefulWidget {
  const NextButtonWidget({super.key});

  @override
  _NextButtonWidgetState createState() => _NextButtonWidgetState();
}

class _NextButtonWidgetState extends State<NextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      backgroundColor: const MaterialStatePropertyAll(Color(0xff3366FF)),
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
        color: Colors.white,
      ),
      fixedSize: MaterialStatePropertyAll(
        Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h),
      ),
      onPressed: () {
        NavigatorHelper(context, AppRoutes.locationScreen);
      },
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0.sp),
      )),
      buttonText: "Next",
    );
  }
}
