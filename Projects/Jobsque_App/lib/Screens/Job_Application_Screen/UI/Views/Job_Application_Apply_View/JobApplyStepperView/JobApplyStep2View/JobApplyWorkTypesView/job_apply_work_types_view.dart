// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/FixedSearchViewHelper/FixedSearchViewHelper.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyStep2GridWorkTypeContainerWidget/job_apply_step2_grid_work_type_container_widget.dart';
import '../../../../../../Controllers/Application_Controller/application_cubit.dart';

class JobApplyWorkTypesView extends StatefulWidget {
  final ApplicationCubit applicationCubitController;

  const JobApplyWorkTypesView({super.key, required this.applicationCubitController});

  @override
  _JobApplyWorkTypesViewState createState() => _JobApplyWorkTypesViewState();
}

class _JobApplyWorkTypesViewState extends State<JobApplyWorkTypesView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(vertical: 8.0.h , horizontal: 5.0.w),
      primary: true,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: FixedSearchViewHelper.searchTitles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 20.0.h,
        childAspectRatio: 4.5.sp,
      ),
      itemBuilder: (context, index) {
        return JobApplyStep2GridWorkTypeContainerWidget(
          workIndex: index,
          applicationCubitController: widget.applicationCubitController,
        );
      },
    );
  }
}
