// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/SearchScreen/Controller/search_bloc.dart';

import 'JobsDemo_View/jobs_demo_view.dart';

class JobsSearchingResultView extends StatefulWidget {
  final SearchBloc blocController;

  const JobsSearchingResultView({super.key, required this.blocController});

  @override
  _JobsSearchingResultViewState createState() => _JobsSearchingResultViewState();
}

class _JobsSearchingResultViewState extends State<JobsSearchingResultView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
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
          itemCount: widget.blocController.isSuccessJobsFilter
              ? widget.blocController.jobsFilterData!.length
              : widget.blocController.jobsModel!.data!.length,
        );
      },
    );
  }
}
