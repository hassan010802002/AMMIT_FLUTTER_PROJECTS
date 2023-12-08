// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/WorkTypes_Helper/WorkTypes_Helper.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/Controller/work_type_cubit.dart';
import 'package:octo_image/octo_image.dart';

class WorkTypeIconWidget extends StatefulWidget {
  final WorkTypeCubit cubit;
  int index;

  WorkTypeIconWidget({Key? key, required this.index, required this.cubit}) : super(key: key);

  @override
  _WorkTypeIconWidgetState createState() => _WorkTypeIconWidgetState();
}

class _WorkTypeIconWidgetState extends State<WorkTypeIconWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkTypeCubit, WorkTypeState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return CircleAvatar(
          radius: 30.0.sp,
          child: ClipOval(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: widget.cubit.selectedWorkTypes.contains(widget.index)? const Color(0xff3366FF) : const Color(0xffD1D5DB),
                  width: 1.5.w,
                ),
                borderRadius: BorderRadius.circular(30.0.sp),
                color: widget.cubit.selectedWorkTypes.contains(widget.index) ? Colors.white : const Color(0xffFAFAFA),
              ),
              child: Center(
                child: OctoImage(
                  image: AssetImage(WorkTypes_Helper.WorkIcons(widget.index)),
                  alignment: Alignment.center,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                  color: widget.cubit.selectedWorkTypes.contains(widget.index) ? const Color(0xff3366FF) : const Color(0xff292D32),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
