// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/JobSavedScreen/UI/Widgets/JobSavedSheetJobApplyButtonWidget/job_saved_sheet_job_apply_button_widget.dart';
import 'package:jobsque_app/Screens/JobSavedScreen/UI/Widgets/JobSavedSheetJobCancelButtonWidget/job_saved_sheet_job_cancel_button_widget.dart';
import 'package:jobsque_app/Screens/JobSavedScreen/UI/Widgets/JobSavedSheetJobShareButtonWidget/job_saved_sheet_job_share_button_widget.dart';

import '../../../../Controller/job_saved_controller_bloc.dart';

class JobSavedJobSheetView extends StatefulWidget {
  final int jobIndex;
  final JobSavedControllerBloc jobSavedBlocController;

  const JobSavedJobSheetView({super.key, required this.jobIndex, required this.jobSavedBlocController});

  @override
  _JobSavedJobSheetViewState createState() => _JobSavedJobSheetViewState();
}

class _JobSavedJobSheetViewState extends State<JobSavedJobSheetView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 3.0.h,
      padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 20.0.h),
      child: Column(
        children: [
          JobSavedSheetJobApplyButtonWidget(jobIndex: widget.jobIndex, jobSavedBlocController: widget.jobSavedBlocController),
          SizedBox(
            height: 20.0.h,
          ),
          const JobSavedSheetJobShareButtonWidget(),
          SizedBox(
            height: 20.0.h,
          ),
          const JobSavedSheetJobCancelButtonWidget(),
        ],
      ),
    );
  }
}
