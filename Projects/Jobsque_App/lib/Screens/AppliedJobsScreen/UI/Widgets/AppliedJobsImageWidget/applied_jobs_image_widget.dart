// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/applied_jobs_controller_bloc.dart';

class AppliedJobsImageWidget extends StatefulWidget {
  final int appliedJobIndex;
  final AppliedJobsControllerBloc appliedJobsControllerBloc;

  const AppliedJobsImageWidget({super.key, required this.appliedJobsControllerBloc, required this.appliedJobIndex});

  @override
  _AppliedJobsImageWidgetState createState() => _AppliedJobsImageWidgetState();
}

class _AppliedJobsImageWidgetState extends State<AppliedJobsImageWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppliedJobsControllerBloc, AppliedJobsControllerState>(
      bloc: widget.appliedJobsControllerBloc,
      builder: (context, state) {
        return widget.appliedJobsControllerBloc.isSuccessJobsData
            ? Container(
          height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.h,
          width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w,
          alignment: Alignment.center,
          decoration: AppliedJobsConsts.containerStyle4(widget),
        )
            : const SizedBox();
      },
    );
  }
}
