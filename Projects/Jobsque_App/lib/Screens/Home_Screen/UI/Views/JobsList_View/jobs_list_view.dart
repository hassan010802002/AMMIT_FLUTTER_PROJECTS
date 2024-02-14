// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Home_Screen/Controller/home_bloc.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Views/JobsList_View/JobContainer_View/job_container_view.dart';

class JobsListView extends StatefulWidget {
  final HomeBloc blocController;

  const JobsListView({super.key, required this.blocController});

  @override
  _JobsListViewState createState() => _JobsListViewState();
}

class _JobsListViewState extends State<JobsListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: widget.blocController,
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          primary: true,
          itemBuilder: (context, index) {
            return JobContainerView(jobIndex: index, controller: widget.blocController,);
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 15.0.w,
            );
          },
          itemCount: widget.blocController.isSuccessJobsData? widget.blocController.jobsModel!.data!.length : 3,
        );
      },
    );
  }
}
