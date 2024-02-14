// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/JobSavedScreen/UI/Widgets/JobSavedMyJobsListContainerWidget/job_saved_my_jobs_list_container_widget.dart';

import '../../../../Controller/job_saved_controller_bloc.dart';

class JobSavedJobsListView extends StatefulWidget {
  final JobSavedControllerBloc jobSavedBlocController;

  const JobSavedJobsListView({super.key, required this.jobSavedBlocController});

  @override
  _JobSavedJobsListViewState createState() => _JobSavedJobsListViewState();
}

class _JobSavedJobsListViewState extends State<JobSavedJobsListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobSavedControllerBloc, JobSavedControllerState>(
      bloc: widget.jobSavedBlocController,
      builder: (context, state) {
        return ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 30.0.h),
          shrinkWrap: true,
          primary: true,
          itemBuilder: (context, index) {
            return BlocBuilder<JobSavedControllerBloc, JobSavedControllerState>(
              bloc: widget.jobSavedBlocController,
              builder: (context, state) {
                return widget.jobSavedBlocController.isSuccessJobsData
                    ? JobSavedMyJobsListContainerWidget(
                        jobSavedBlocController: widget.jobSavedBlocController,
                        jobIndex: index,
                      )
                    : const SizedBox();
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: const Color(0xffE5E7EB),
              thickness: 2.5.h,
              height: 30.0.h,
            );
          },
          itemCount: widget.jobSavedBlocController.isSuccessJobsData ? widget.jobSavedBlocController.jobsModel!.data!.length : 0,
        );
      },
    );
  }
}
