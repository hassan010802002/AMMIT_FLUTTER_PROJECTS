// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Views/RecentJobs_View/JobsDemo_View/jobs_demo_view.dart';

import '../../../Controller/home_bloc.dart';

class RecentJobsView extends StatefulWidget {
  final HomeBloc blocController;

  const RecentJobsView({Key? key, required this.blocController}) : super(key: key);

  @override
  _RecentJobsViewState createState() => _RecentJobsViewState();
}

class _RecentJobsViewState extends State<RecentJobsView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: widget.blocController,
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          primary: true,
          itemBuilder: (context, index) {
            return JobsDemoView(jobIndex: index, controller: widget.blocController);
          },
          separatorBuilder: (context, index) {
            return widget.blocController.isSuccessJobsData
                ? Divider(
                    height: 40.0.h,
                    color: const Color(0xffE5E7EB),
                    thickness: 1.2,
                  )
                : const SizedBox();
          },
          itemCount: widget.blocController.isSuccessJobsData ? widget.blocController.jobsModel!.data!.length : 3,
        );
      },
    );
  }
}
