// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/UI/Widgets/WorkType_Icon_Widget/work_type_icon_widget.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/UI/Widgets/WorkType_Title_Widget/work_type_title_widget.dart';

import '../../../../Controller/work_type_cubit.dart';

class WorkTypeContainerView extends StatefulWidget {
  final WorkTypeCubit cubit;
  int index;

  WorkTypeContainerView({Key? key, required this.index, required this.cubit}) : super(key: key);

  @override
  _WorkTypeContainerViewState createState() => _WorkTypeContainerViewState();
}

class _WorkTypeContainerViewState extends State<WorkTypeContainerView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.cubit.CheckingUserWorkTypeSelection(widget.index);
      },
      child: BlocBuilder<WorkTypeCubit, WorkTypeState>(
        bloc: widget.cubit,
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              color: widget.cubit.selectedWorkTypes.contains(widget.index) ? const Color(0xffD6E4FF): const Color(0xffFAFAFA),
              border: Border.all(
                color: widget.cubit.selectedWorkTypes.contains(widget.index) ? const Color(0xff3366FF) : const Color(0xffD1D5DB),
                width: 1.5.w,
              ),
              borderRadius: BorderRadius.circular(15.0.sp),
            ),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(15.0.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WorkTypeIconWidget(index: widget.index, cubit: widget.cubit),
                WorkTypeTitleWidget(index: widget.index),
              ],
            ),
          );
        },
      ),
    );
  }
}
