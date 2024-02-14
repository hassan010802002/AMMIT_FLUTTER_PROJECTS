// ignore_for_file: camel_case_types, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/JobSavedScreen/UI/Views/JobSavedEmptySavedJobsView/job_saved_empty_saved_jobs_view.dart';
import 'package:jobsque_app/Screens/JobSavedScreen/UI/Views/JobSavedMyJobsView/job_saved_my_jobs_view.dart';
import '../../Controller/job_saved_controller_bloc.dart';

class JobSavedMainView extends StatefulWidget {
  final JobSavedControllerBloc jobSavedBlocController;

  const JobSavedMainView({super.key, required this.jobSavedBlocController});

  @override
  State<JobSavedMainView> createState() => _JobSavedMainViewState();
}

class _JobSavedMainViewState extends State<JobSavedMainView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobSavedControllerBloc, JobSavedControllerState>(
      bloc: widget.jobSavedBlocController,
      builder: (context, state) {
        return widget.jobSavedBlocController.isSuccessJobsData
            ? JobSavedMyJobsView(jobSavedBlocController: widget.jobSavedBlocController)
            : const JobSavedEmptySavedJobsView();
      },
    );
  }
}
