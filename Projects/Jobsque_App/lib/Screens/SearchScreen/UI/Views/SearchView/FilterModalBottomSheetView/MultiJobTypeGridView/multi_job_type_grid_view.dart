// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/MultiJobTypeContainer/multi_job_type_container.dart';

import '../../../../../Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';

class MultiJobTypeGridView extends StatefulWidget {
  final FilterBottomSheetCubit bottomSheetCubit;

  const MultiJobTypeGridView({Key? key, required this.bottomSheetCubit}) : super(key: key);

  @override
  _MultiJobTypeGridViewState createState() => _MultiJobTypeGridViewState();
}

class _MultiJobTypeGridViewState extends State<MultiJobTypeGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: true,
      itemCount: 6,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0.w,
        mainAxisSpacing: 25.0.h,
        childAspectRatio: 2.5.sp,
      ),
      itemBuilder: (context, index) {
        return MultiJobTypeContainer(
          bottomSheetCubit: widget.bottomSheetCubit,
          index: index,
        );
      },
    );
  }
}
