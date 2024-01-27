// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/SearchScreen/Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';
import 'package:jobsque_app/Screens/SearchScreen/Controller/search_bloc.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Views/EmptyView/empty_view.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Views/InitialView/PopularSearches/popular_searches.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Views/SearchView/search_view.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/SearchingField/searching_field.dart';

import '../Widgets/PopularDivider/popular_divider.dart';
import '../Widgets/RecentDivider/recent_divider.dart';
import 'InitialView/RecentSearches/recent_searches.dart';

class SearchMainView extends StatefulWidget {
  final SearchBloc controller;
  final FilterBottomSheetCubit bottomSheetCubit;

  const SearchMainView({super.key, required this.controller, required this.bottomSheetCubit});

  @override
  State<SearchMainView> createState() => _SearchMainViewState();
}

class _SearchMainViewState extends State<SearchMainView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: true,
      child: BlocBuilder<SearchBloc, SearchState>(
        bloc: widget.controller,
        builder: (context, state) {
          return Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w, top: 15.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BackButtonWidget(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: 15.0.w,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
                          child: SearchingField(controller: widget.controller),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0.h,
                ),
                !widget.controller.isEmptySearch
                    ? Column(
                        children: [
                          const RecentDivider(),
                          SizedBox(
                            height: 20.0.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w, top: 15.0.h),
                            child: const RecentSearches(),
                          ),
                          SizedBox(
                            height: 30.0.h,
                          ),
                          const PopularDivider(),
                          SizedBox(
                            height: 20.0.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w, top: 15.0.h),
                            child: const PopularSearches(),
                          ),
                        ],
                      )
                    : widget.controller.isSuccessJobsData
                        ? SearchView(controller: widget.controller, bottomSheetCubit: widget.bottomSheetCubit)
                        : const EmptyView(),
              ],
            ),
          );
        },
      ),
    );
  }
}
