// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/applied_jobs_controller_bloc.dart';

class AppliedJobsTimeTypeContainerWidget extends StatefulWidget {
  final int appliedJobIndex;
  final AppliedJobsControllerBloc appliedJobsControllerBloc;

  const AppliedJobsTimeTypeContainerWidget({super.key, required this.appliedJobsControllerBloc, required this.appliedJobIndex});

  @override
  _AppliedJobsTimeTypeContainerWidgetState createState() => _AppliedJobsTimeTypeContainerWidgetState();
}

class _AppliedJobsTimeTypeContainerWidgetState extends State<AppliedJobsTimeTypeContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppliedJobsControllerBloc, AppliedJobsControllerState>(
      bloc: widget.appliedJobsControllerBloc,
      builder: (context, state) {
        return widget.appliedJobsControllerBloc.isSuccessJobsData
            ? Container(
                alignment: Alignment.center,
                height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.h,
                width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 5.0.w,
                decoration: BoxDecoration(
                  color: const Color(0xffD6E4FF),
                  borderRadius: BorderRadius.circular(25.0.sp),
                ),
                child: Center(
                  child: Text(
                    widget.appliedJobsControllerBloc.jobsModel!.data!.elementAt(widget.appliedJobIndex).jobTimeType!,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: TextFontFamily,
                      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
                      color: const Color(0xff3366FF),
                    ),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }
}
