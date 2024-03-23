// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque_app/Helpers/FixedSearchViewHelper/FixedSearchViewHelper.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsFixedJobTitlesMenuWidget extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobDetailsFixedJobTitlesMenuWidget({super.key, required this.detailsCubitController});

  @override
  _JobDetailsFixedJobTitlesMenuWidgetState createState() => _JobDetailsFixedJobTitlesMenuWidgetState();
}

class _JobDetailsFixedJobTitlesMenuWidgetState extends State<JobDetailsFixedJobTitlesMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      dropdownMenuEntries: List<DropdownMenuEntry>.generate(
        FixedSearchViewHelper.searchTitles.length,
        (index) => DropdownMenuEntry(
          value: FixedSearchViewHelper.titles(index),
          label: FixedSearchViewHelper.titles(index),
        ),
      ),
      trailingIcon: const Icon(
        FontAwesomeIcons.chevronDown,
        color: Color(0xff111827),
      ),
      controller: widget.detailsCubitController!.fixedJobTitlesController,
      menuHeight: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 3.5.h,
      menuStyle: MenuStyle(
        alignment: AlignmentDirectional.centerStart,
        visualDensity: VisualDensity.comfortable,
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 8.0.w),
        ),
      ),
      expandedInsets: EdgeInsets.symmetric(horizontal: 0.0.w, vertical: 0.0.h),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(45.0.sp),
          borderSide: BorderSide(
            width: 1.5.w,
            color: const Color(0xffD1D5DB),
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 8.0.h),
        constraints: BoxConstraints.loose(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.2.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(45.0.sp),
          borderSide: BorderSide(
            width: 1.5.w,
            color: const Color(0xffD1D5DB),
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
      ),
      textStyle: TextStyle(
        color: const Color(0xff111827),
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontFamily: TextFontFamily,
      ),
    );
  }
}
