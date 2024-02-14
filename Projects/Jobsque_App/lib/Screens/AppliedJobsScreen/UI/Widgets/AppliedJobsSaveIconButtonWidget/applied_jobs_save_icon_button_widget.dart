// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/applied_jobs_controller_bloc.dart';

class AppliedJobsSaveIconButtonWidget extends StatefulWidget {
  final int appliedJobIndex;
  final AppliedJobsControllerBloc appliedJobsControllerBloc;

  const AppliedJobsSaveIconButtonWidget({super.key, required this.appliedJobsControllerBloc, required this.appliedJobIndex});

  @override
  _AppliedJobsSaveIconButtonWidgetState createState() => _AppliedJobsSaveIconButtonWidgetState();
}

class _AppliedJobsSaveIconButtonWidgetState extends State<AppliedJobsSaveIconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppliedJobsControllerBloc, AppliedJobsControllerState>(
      bloc: widget.appliedJobsControllerBloc,
      builder: (context, state) {
        return IconButton(
          icon: OctoImage(
            image: widget.appliedJobsControllerBloc.savedJobs.contains(widget.appliedJobIndex) &&
                    widget.appliedJobsControllerBloc.savedJobIdx == widget.appliedJobIndex
                ? const AssetImage("Assets/Images/archive-minus2.png")
                : const AssetImage("Assets/Images/archive-minus.png"),
            filterQuality: FilterQuality.high,
            fit: BoxFit.contain,
            width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.w,
            height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h,
            alignment: Alignment.center,
            color: const Color(0xff111827),
          ),
          onPressed: () {
            widget.appliedJobsControllerBloc.ChangingJobSaveStatus(widget.appliedJobIndex);
          },
          style: ButtonStyle(
            visualDensity: VisualDensity.comfortable,
            alignment: Alignment.center,
            padding: MaterialStatePropertyAll(EdgeInsets.all(5.0.sp)),
            fixedSize: MaterialStatePropertyAll(
              Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h),
            ),
          ),
        );
      },
    );
  }
}
