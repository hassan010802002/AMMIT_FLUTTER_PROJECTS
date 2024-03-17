// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Views/AppliedJobsTabBarView/AppliedJobsActiveJobsTabBarView/applied_jobs_active_jobs_tab_bar_view.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Views/AppliedJobsTabBarView/AppliedJobsEmptyView/applied_jobs_empty_view.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsTabBarWidget/applied_jobs_tab_bar_widget.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/applied_jobs_controller_bloc.dart';

class AppliedJobsTabBarView extends StatefulWidget {
  final AppliedJobsControllerBloc? appliedJobsControllerBloc;

  const AppliedJobsTabBarView({super.key, this.appliedJobsControllerBloc});

  @override
  _AppliedJobsTabBarViewState createState() => _AppliedJobsTabBarViewState();
}

class _AppliedJobsTabBarViewState extends State<AppliedJobsTabBarView> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 18.0.h,
            decoration: AppliedJobsConsts.containerStyle6,
            width: MediaQuery_Size_Helper.MAX_HEIGHT(context)!.w,
            child: const AppliedJobsTabBarWidget(),
          ),
        ),
        SizedBox(
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 1.374.h,
          child: TabBarView(
            children: [
              AppliedJobsActiveJobsTabBarView(appliedJobsControllerBloc: widget.appliedJobsControllerBloc!),
              const AppliedJobsEmptyView(),
            ],
          ),
        ),
      ],
    );
  }
}
