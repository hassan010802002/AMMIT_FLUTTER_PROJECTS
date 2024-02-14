// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Views/AppliedJobsTabBarView/AppliedJobsActiveJobsTabBarView/applied_jobs_active_jobs_tab_bar_view.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Views/AppliedJobsTabBarView/AppliedJobsEmptyView/applied_jobs_empty_view.dart';

import '../../../../../Config/AppConfig.dart';
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
            decoration: BoxDecoration(
              color: const Color(0xffF4F4F5),
              borderRadius: BorderRadius.circular(45.0.sp),
            ),
            width: MediaQuery_Size_Helper.MAX_HEIGHT(context)!.w,
            child: TabBar(
              unselectedLabelColor: const Color(0xff6B7280),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                fontFamily: TextFontFamily,
              ),
              labelStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                fontFamily: TextFontFamily,
              ),
              labelColor: Colors.white,
              indicatorPadding: EdgeInsets.zero,
              indicatorWeight: 0.0.sp,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(45.0.sp),
                color: const Color(0xff02337A),
              ),
              dividerHeight: 0,
              splashBorderRadius: BorderRadius.circular(45.0.sp),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
                  text: "Active",
                ),
                Tab(
                  height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
                  text: "Rejected",
                ),
              ],
            ),
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
