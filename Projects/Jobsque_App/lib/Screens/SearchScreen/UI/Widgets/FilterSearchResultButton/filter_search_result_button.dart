// ignore_for_file: library_private_types_in_public_api

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/Custom_Button/Custom_Button.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';
import '../../../Controller/search_bloc.dart';

class FilterSearchResultButton extends StatefulWidget {
  final SearchBloc controller;
  final FilterBottomSheetCubit bottomSheetCubit;

  const FilterSearchResultButton({super.key, required this.controller, required this.bottomSheetCubit});

  @override
  _FilterSearchResultButtonState createState() => _FilterSearchResultButtonState();
}

class _FilterSearchResultButtonState extends State<FilterSearchResultButton> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontFamily: TextFontFamily,
        color: Colors.white,
      ),
      buttonText: "Show result",
      onPressed: () {
        widget.bottomSheetCubit.JobFiltrationResult(context, widget.controller.jobsModel);
        log("Search Jobs Model Data Length is ${widget.controller.jobsModel!.data!.length}", name: "Main Search Data");
      },
      backgroundColor: const MaterialStatePropertyAll(Color(0xff3366FF)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(45.0.sp)),
      ),
      fixedSize: MaterialStatePropertyAll(
        Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 16.5.h),
      ),
    );
  }
}
