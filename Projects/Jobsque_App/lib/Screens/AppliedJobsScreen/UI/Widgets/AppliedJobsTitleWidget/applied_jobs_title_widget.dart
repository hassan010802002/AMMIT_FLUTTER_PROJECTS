// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/applied_jobs_controller_bloc.dart';

class AppliedJobsTitleWidget extends StatefulWidget {
  final int appliedJobIndex;
  final AppliedJobsControllerBloc appliedJobsControllerBloc;

  const AppliedJobsTitleWidget({super.key, required this.appliedJobsControllerBloc, required this.appliedJobIndex});

  @override
  _AppliedJobsTitleWidgetState createState() => _AppliedJobsTitleWidgetState();
}

class _AppliedJobsTitleWidgetState extends State<AppliedJobsTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppliedJobsControllerBloc, AppliedJobsControllerState>(
      bloc: widget.appliedJobsControllerBloc,
      builder: (context, state) {
        return widget.appliedJobsControllerBloc.isSuccessJobsData
            ? Text(
                widget.appliedJobsControllerBloc.jobsModel!.data![widget.appliedJobIndex].name!,
                textAlign: TextAlign.start,
                softWrap: true,
                style: TextStyle(
                  color: const Color(0xff111827),
                  fontSize: widget.appliedJobsControllerBloc.jobsModel!.data![widget.appliedJobIndex].name!.length <= 15
                      ? MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.sp
                      : MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
                  fontFamily: TextFontFamily,
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox();
      },
    );
  }
}
