// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/Application_Controller/application_cubit.dart';

import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyTypeOfWorkTextWidget/job_apply_type_of_work_text_widget.dart';

import '../../../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../../Widgets/JobApplyStepTextWidget/job_apply_step_text_widget.dart';
import 'JobApplyWorkTypesView/job_apply_work_types_view.dart';

class JobApplyStep2View extends StatefulWidget {
  final ApplicationCubit applicationCubitController;

  const JobApplyStep2View({super.key, required this.applicationCubitController});

  @override
  _JobApplyStep2ViewState createState() => _JobApplyStep2ViewState();
}

class _JobApplyStep2ViewState extends State<JobApplyStep2View> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        primary: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const JobApplyTypeOfWorkTextWidget(),
            const JobApplyStepTextWidget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 35.0.h,
            ),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)!/2.0.h,
              child: JobApplyWorkTypesView(applicationCubitController: widget.applicationCubitController),
            ),
          ],
        ),
      ),
    );
  }
}
