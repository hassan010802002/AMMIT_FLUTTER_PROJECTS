// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/BottomSheet_Helper/BottomSheet_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/SearchScreen/Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';

class MultiJobTypeContainer extends StatefulWidget {
  int? index;
  final FilterBottomSheetCubit bottomSheetCubit;

  MultiJobTypeContainer({Key? key, required this.bottomSheetCubit, required this.index}) : super(key: key);

  @override
  _MultiJobTypeContainerState createState() => _MultiJobTypeContainerState();
}

class _MultiJobTypeContainerState extends State<MultiJobTypeContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBottomSheetCubit, FilterBottomSheetState>(
      bloc: widget.bottomSheetCubit,
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            widget.bottomSheetCubit.CheckingJobTypeFilterSelection(widget.index!);
          },
          child: Container(
            decoration: BoxDecoration(
              color: widget.bottomSheetCubit.selectedJobTypeFilters.contains(widget.index)
                  ? const Color(0xffD6E4FF)
                  : Colors.white,
              borderRadius: BorderRadius.circular(45.0.sp),
              border: Border.all(
                color: widget.bottomSheetCubit.selectedJobTypeFilters.contains(widget.index)
                    ? const Color(0xff3366FF)
                    : const Color(0xff9CA3AF),
                width: 1.5.w,
              ),
            ),
            alignment: Alignment.center,
            child: Center(
              child: Text(
                BottomSheetHelper.bottomSheetJobType(widget.index!),
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  color: widget.bottomSheetCubit.selectedJobTypeFilters.contains(widget.index)
                      ? const Color(0xff3366FF)
                      : const Color(0xff6B7280),
                  fontFamily: TextFontFamily,
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
