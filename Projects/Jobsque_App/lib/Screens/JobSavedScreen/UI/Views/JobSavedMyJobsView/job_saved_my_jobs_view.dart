// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../../Controller/job_saved_controller_bloc.dart';
import '../../Widgets/JobSavedDividerContainerWidget/job_saved_divider_container_widget.dart';
import '../../Widgets/JobSavedTitleTextWidget/job_saved_title_text_widget.dart';
import 'JobSavedJobsListView/job_saved_jobs_list_view.dart';

class JobSavedMyJobsView extends StatefulWidget {
  final JobSavedControllerBloc jobSavedBlocController;

  const JobSavedMyJobsView({super.key, required this.jobSavedBlocController});

  @override
  _JobSavedMyJobsViewState createState() => _JobSavedMyJobsViewState();
}

class _JobSavedMyJobsViewState extends State<JobSavedMyJobsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButtonWidget(),
              const JobSavedTitleTextWidget(),
              const SizedBox(),
            ],
          ),
        ),
        const JobSavedDividerContainerWidget(),
        Expanded(
          child: JobSavedJobsListView(jobSavedBlocController: widget.jobSavedBlocController),
        ),
      ],
    );
  }
}
