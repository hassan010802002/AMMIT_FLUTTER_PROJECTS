// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';
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
                ? const AssetImage(AppliedJobsConsts.image1)
                : const AssetImage(AppliedJobsConsts.image2),
            filterQuality: FilterQuality.high,
            fit: BoxFit.contain,
            width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.w,
            height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h,
            alignment: Alignment.center,
            color: AppliedJobsConsts.color10,
          ),
          onPressed: () {
            widget.appliedJobsControllerBloc.ChangingJobSaveStatus(widget.appliedJobIndex);
          },
          style: AppliedJobsConsts.buttonStyle1(context),
        );
      },
    );
  }
}
