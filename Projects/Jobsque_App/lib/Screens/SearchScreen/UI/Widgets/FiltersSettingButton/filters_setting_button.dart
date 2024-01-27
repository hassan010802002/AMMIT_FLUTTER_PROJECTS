// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Models/Jobs_Model/JobsModel.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Views/SearchView/FilterModalBottomSheetView/filter_modal_bottom_sheet_view.dart';

import '../../../Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';
import '../../../Controller/search_bloc.dart';

class FiltersSettingButton extends StatefulWidget {
  final FilterBottomSheetCubit bottomSheetCubit;
  final SearchBloc controller;

  const FiltersSettingButton({Key? key, required this.controller, required this.bottomSheetCubit}) : super(key: key);

  @override
  _FiltersSettingButtonState createState() => _FiltersSettingButtonState();
}

class _FiltersSettingButtonState extends State<FiltersSettingButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        List<Data>? filteredJobsModelData = await showModalBottomSheet<List<Data>>(
          context: context,
          showDragHandle: true,
          isScrollControlled: true,
          constraints: BoxConstraints.expand(
            height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 1.05.h,
          ),
          builder: (context) {
            return FilterModalBottomSheetView(
              bottomSheetCubit: widget.bottomSheetCubit,
              controller: widget.controller,
            );
          },
        );
        widget.controller.ApplyingFilterResult(filteredJobsModelData);
      },
      alignment: Alignment.center,
      style: const ButtonStyle(
        visualDensity: VisualDensity.comfortable,
      ),
      icon: Icon(
        FontAwesomeIcons.sliders,
        size: 28.0.sp,
        color: const Color(0xff111827),
      ),
    );
  }
}
