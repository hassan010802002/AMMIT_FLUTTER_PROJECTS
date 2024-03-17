// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:octo_image/octo_image.dart';

import '../../../Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';

class SalaryFilterMenu extends StatefulWidget {
  final FilterBottomSheetCubit bottomSheetCubit;

  const SalaryFilterMenu({super.key , required this.bottomSheetCubit});

  @override
  _SalaryFilterMenuState createState() => _SalaryFilterMenuState();
}

class _SalaryFilterMenuState extends State<SalaryFilterMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      dropdownMenuEntries: const [
        DropdownMenuEntry(
          value: "Less Than \$5K",
          label: "Less Than \$5K",
        ),
        DropdownMenuEntry(
          value: "\$5K - \$10K",
          label: "\$5K - \$10K",
        ),
        DropdownMenuEntry(
          value: "\$10K - \$15K",
          label: "\$10K - \$15K",
        ),
        DropdownMenuEntry(
          value: "\$15K - \$20K",
          label: "\$15K - \$20K",
        ),
        DropdownMenuEntry(
          value: "More Than \$20K",
          label: "More Than \$20K",
        ),
      ],
      leadingIcon: OctoImage(
        image: const AssetImage("Assets/Images/dollar-circle.png"),
        color: const Color(0xff292D32),
        filterQuality: FilterQuality.high,
        alignment: Alignment.center,
      ),
      trailingIcon: const Icon(
        FontAwesomeIcons.chevronDown,
        color: Color(0xff111827),
      ),
      controller: widget.bottomSheetCubit.jobSalaryController,
      enableFilter: true,
      enableSearch: true,
      enabled: true,
      menuHeight: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 3.5.h,
      menuStyle: MenuStyle(
        alignment: AlignmentDirectional.centerStart,
        visualDensity: VisualDensity.comfortable,
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 15.0.h, horizontal: 10.0.w),
        ),
      ),
      expandedInsets: EdgeInsets.symmetric(horizontal: 0.0.w, vertical: 0.0.h),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.sp),
          borderSide: BorderSide(
            width: 1.5.w,
            color: const Color(0xffD1D5DB),
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 50.0.w, vertical: 15.0.h),
        constraints: BoxConstraints.loose(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.5.h),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.sp),
          borderSide: BorderSide(
            width: 1.5.w,
            color: const Color(0xffD1D5DB),
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
      ),
      textStyle: TextStyle(
        color: const Color(0xff111827),
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontFamily: TextFontFamily,
      ),
    );
  }
}
