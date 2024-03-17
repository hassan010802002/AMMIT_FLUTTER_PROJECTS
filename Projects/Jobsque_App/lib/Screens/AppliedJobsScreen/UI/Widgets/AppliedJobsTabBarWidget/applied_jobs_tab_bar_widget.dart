// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';


class AppliedJobsTabBarWidget extends StatefulWidget {
  const AppliedJobsTabBarWidget({super.key});

  @override
  _AppliedJobsTabBarWidgetState createState() => _AppliedJobsTabBarWidgetState();
}

class _AppliedJobsTabBarWidgetState extends State<AppliedJobsTabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: AppliedJobsConsts.color4,
      unselectedLabelStyle: AppliedJobsConsts.textStyle10(context),
      labelStyle: AppliedJobsConsts.textStyle10(context),
      labelColor: AppliedJobsConsts.color9,
      indicatorPadding: EdgeInsets.zero,
      indicatorWeight: 0.0.sp,
      indicator: AppliedJobsConsts.containerStyle7,
      dividerHeight: 0,
      splashBorderRadius: BorderRadius.circular(45.0.sp),
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: [
        Tab(
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
          text: AppliedJobsConsts.text4,
        ),
        Tab(
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
          text: AppliedJobsConsts.text5,
        ),
      ],
    );
  }
}
