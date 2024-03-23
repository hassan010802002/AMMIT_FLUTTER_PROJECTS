// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Views/SearchView/FilterModalBottomSheetView/MultiJobTypeGridView/multi_job_type_grid_view.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/FilterResettingButton/filter_resetting_button.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/FilterSearchResultButton/filter_search_result_button.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/JobTitleField/job_title_field.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/LocationField/location_field.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/SalaryFilterMenu/salary_filter_menu.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/SheetText1/sheet_text1.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/SheetText2/sheet_text2.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/SheetText3/sheet_text3.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/SheetText4/sheet_text4.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/SheetTitle/sheet_title.dart';

import '../../../../Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';
import '../../../../Controller/search_bloc.dart';

class FilterModalBottomSheetView extends StatefulWidget {
  final FilterBottomSheetCubit bottomSheetCubit;
  final SearchBloc controller;

  const FilterModalBottomSheetView({super.key, required this.bottomSheetCubit, required this.controller});

  @override
  _FilterModalBottomSheetViewState createState() => _FilterModalBottomSheetViewState();
}

class _FilterModalBottomSheetViewState extends State<FilterModalBottomSheetView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)!,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 10.0.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButtonWidget(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SheetTitle(),
                FilterResettingButton(bottomSheetCubit: widget.bottomSheetCubit),
              ],
            ),
            SizedBox(
              height: 20.0.h,
            ),
            const SheetText1(),
            SizedBox(
              height: 8.0.h,
            ),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
              child: JobTitleField(bottomSheetCubit: widget.bottomSheetCubit),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            const SheetText2(),
            SizedBox(
              height: 8.0.h,
            ),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
              child: LocationField(bottomSheetCubit: widget.bottomSheetCubit),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            const SheetText3(),
            SizedBox(
              height: 8.0.h,
            ),
            SalaryFilterMenu(bottomSheetCubit: widget.bottomSheetCubit),
            SizedBox(
              height: 20.0.h,
            ),
            const SheetText4(),
            SizedBox(
              height: 15.0.h,
            ),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 6.0.h,
              child: MultiJobTypeGridView(bottomSheetCubit: widget.bottomSheetCubit),
            ),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 8.5.h,
            ),
            FilterSearchResultButton(
              controller: widget.controller,
              bottomSheetCubit: widget.bottomSheetCubit,
            ),
          ],
        ),
      ),
    );
  }
}
