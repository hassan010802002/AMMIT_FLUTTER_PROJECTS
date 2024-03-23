// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';

class FilterResettingButton extends StatefulWidget {
  final FilterBottomSheetCubit bottomSheetCubit;

  const FilterResettingButton({super.key, required this.bottomSheetCubit});

  @override
  _FilterResettingButtonState createState() => _FilterResettingButtonState();
}

class _FilterResettingButtonState extends State<FilterResettingButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        widget.bottomSheetCubit.Resetting();
      },
      style: ButtonStyle(
        visualDensity: VisualDensity.comfortable,
        alignment: Alignment.center,
        fixedSize: MaterialStatePropertyAll(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.0.w, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 24.0.h),
        ),
      ),
      child: Text(
        'Reset',
        textAlign: TextAlign.center,
        softWrap: true,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
          fontFamily: TextFontFamily,
          color: const Color(0xff3366FF),
        ),
      ),
    );
  }
}
