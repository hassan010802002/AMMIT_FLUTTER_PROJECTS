// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/Custom_Button/Custom_Button.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

import '../../../Controller/home_bloc.dart';

class JobApplyButton extends StatefulWidget {
  int? jobIndex;
  final HomeBloc controller;

  JobApplyButton({Key? key, required this.jobIndex, required this.controller}) : super(key: key);

  @override
  _JobApplyButtonState createState() => _JobApplyButtonState();
}

class _JobApplyButtonState extends State<JobApplyButton> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        NavigatorHelper(
          context,
          AppRoutes.applicationScreen,
          screenArguments: widget.controller.jobsModel!.data![widget.jobIndex!],
        );
      },
      style: TextStyle(
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: const MaterialStatePropertyAll(Color(0xff3366FF)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(45.0.sp)),
      ),
      buttonText: "Apply now",
      fixedSize: MaterialStatePropertyAll(
        Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 3.2.w, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 19.0.h),
      ),
    );
  }
}
