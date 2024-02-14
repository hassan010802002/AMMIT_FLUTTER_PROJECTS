// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Views/AppliedJobsTabBarView/AppliedJobsActiveJobsTabBarView/ActiveJobsListView/active_jobs_list_view.dart';

import '../../../../Controller/applied_jobs_controller_bloc.dart';
import '../../../Widgets/AppliedJobsDividerContainer/applied_jobs_divider_container.dart';

class AppliedJobsActiveJobsTabBarView extends StatefulWidget {
  final AppliedJobsControllerBloc appliedJobsControllerBloc;

  const AppliedJobsActiveJobsTabBarView({super.key, required this.appliedJobsControllerBloc});

  @override
  _AppliedJobsActiveJobsTabBarViewState createState() => _AppliedJobsActiveJobsTabBarViewState();
}

class _AppliedJobsActiveJobsTabBarViewState extends State<AppliedJobsActiveJobsTabBarView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.0.h,
        ),
        const AppliedJobsDividerContainer(),
        Expanded(child: ActiveJobsListView(appliedJobsControllerBloc: widget.appliedJobsControllerBloc)),
      ],
    );
  }
}
