// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/applied_jobs_controller_bloc.dart';

class AppliedJobsSubTitleWidget extends StatefulWidget {
  final int appliedJobIndex;
  final AppliedJobsControllerBloc appliedJobsControllerBloc;

  const AppliedJobsSubTitleWidget({super.key, required this.appliedJobsControllerBloc, required this.appliedJobIndex});

  @override
  _AppliedJobsSubTitleWidgetState createState() => _AppliedJobsSubTitleWidgetState();
}

class _AppliedJobsSubTitleWidgetState extends State<AppliedJobsSubTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppliedJobsControllerBloc, AppliedJobsControllerState>(
      bloc: widget.appliedJobsControllerBloc,
      builder: (context, state) {
        return widget.appliedJobsControllerBloc.isSuccessJobsData
            ? Text(
                widget.appliedJobsControllerBloc.jobsModel!.data![widget.appliedJobIndex].location!.length > 30
                    ? "${widget.appliedJobsControllerBloc.jobsModel!.data![widget.appliedJobIndex].location!.substring(0, 30)}..."
                    : widget.appliedJobsControllerBloc.jobsModel!.data![widget.appliedJobIndex].location!,
                textAlign: TextAlign.start,
                softWrap: true,
                style: TextStyle(
                  color: const Color(0xff9CA3AF),
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
                  fontFamily: TextFontFamily,
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox();
      },
    );
  }
}
