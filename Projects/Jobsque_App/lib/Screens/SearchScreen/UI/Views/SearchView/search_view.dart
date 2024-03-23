// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Views/SearchView/FilterSearchView/filter_search_view.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Views/SearchView/JobsSearchingResultView/jobs_searching_result_view.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/FiltersSettingButton/filters_setting_button.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/SearchResultDivider/search_result_divider.dart';

import '../../../Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';
import '../../../Controller/search_bloc.dart';

class SearchView extends StatefulWidget {
  final SearchBloc controller;
  final FilterBottomSheetCubit bottomSheetCubit;

  const SearchView({super.key, required this.controller, required this.bottomSheetCubit});

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0.w),
              child: FiltersSettingButton(bottomSheetCubit: widget.bottomSheetCubit, controller: widget.controller),
            ),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.5.h,
              width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.28.w,
              child: FilterSearchView(controller: widget.controller),
            ),
          ],
        ),
        SizedBox(
          height: 20.0.h,
        ),
        const SearchResultDivider(),
        SizedBox(
          height: 30.0.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w),
          child: JobsSearchingResultView(blocController: widget.controller),
        ),
      ],
    );
  }
}
