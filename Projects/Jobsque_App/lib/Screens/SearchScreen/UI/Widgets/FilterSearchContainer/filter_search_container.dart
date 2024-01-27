// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/SearchFilterHelper/SearchFilterHelper.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/search_bloc.dart';

class FilterSearchContainer extends StatefulWidget {
  final SearchBloc controller;
  int filterIndex;

  FilterSearchContainer({Key? key, required this.filterIndex, required this.controller}) : super(key: key);

  @override
  _FilterSearchContainerState createState() => _FilterSearchContainerState();
}

class _FilterSearchContainerState extends State<FilterSearchContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: widget.controller,
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            widget.controller.CheckingFilterSelection(widget.filterIndex);
          },
          child: Container(
            width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 3.5.w,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: SearchFilterHelper.gettingFilterTitle(widget.filterIndex).length > 6 ? 10.0.w : 15.0.w,
              vertical: 10.0.h,
            ),
            decoration: BoxDecoration(
              color: widget.controller.selectedFilters.contains(widget.filterIndex) ? const Color(0xff091A7A) : Colors.white,
              border: !widget.controller.selectedFilters.contains(widget.filterIndex)
                  ? Border.all(
                      color: const Color(0xffD1D5DB),
                      width: 1.5.w,
                      strokeAlign: BorderSide.strokeAlignInside,
                    )
                  : null,
              borderRadius: BorderRadius.circular(30.0.sp),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  SearchFilterHelper.gettingFilterTitle(widget.filterIndex),
                  textAlign: TextAlign.start,
                  softWrap: true,
                  style: TextStyle(
                    color: widget.controller.selectedFilters.contains(widget.filterIndex) ? Colors.white : const Color(0xff6B7280),
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
                    fontFamily: TextFontFamily,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.angleDown,
                  color: widget.controller.selectedFilters.contains(widget.filterIndex) ? const Color(0xffF4F4F5) : const Color(0xff6B7280),
                  size: 25.0.sp,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
