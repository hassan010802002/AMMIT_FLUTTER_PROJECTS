// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/applied_jobs_controller_bloc.dart';

class AppliedJobTypeContainerWidget extends StatefulWidget {
  final int appliedJobIndex;
  final AppliedJobsControllerBloc appliedJobsControllerBloc;

  const AppliedJobTypeContainerWidget({super.key, required this.appliedJobsControllerBloc, required this.appliedJobIndex});

  @override
  _AppliedJobTypeContainerWidgetState createState() => _AppliedJobTypeContainerWidgetState();
}

class _AppliedJobTypeContainerWidgetState extends State<AppliedJobTypeContainerWidget> {
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
                decoration: AppliedJobsConsts.containerStyle5,
                child: Center(
                  child: Text(
                    widget.appliedJobsControllerBloc.jobsModel!.data!.elementAt(widget.appliedJobIndex).jobType!,
                    style: AppliedJobsConsts.textStyle9(context),
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
