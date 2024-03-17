// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';

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
                style: AppliedJobsConsts.textStyle8(context,widget),
              )
            : const SizedBox();
      },
    );
  }
}
