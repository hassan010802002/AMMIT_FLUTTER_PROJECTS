// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Views/Job_Application_Apply_View/JobApplyStepperView/JobApplyStep1View/job_apply_step1_view.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Views/Job_Application_Apply_View/JobApplyStepperView/JobApplyStep2View/job_apply_step2_view.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Views/Job_Application_Apply_View/JobApplyStepperView/JobApplyStep3View/job_apply_step3_view.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Views/Job_Application_Apply_View/JobApplyStepperView/job_apply_stepper_view.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/ApplyViewTitleTextWidget/apply_view_title_text_widget.dart';

import '../../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../../Controllers/Application_Controller/application_cubit.dart';

class JobApplicationApplyView extends StatefulWidget {
  final ApplicationCubit applicationCubitController;

  const JobApplicationApplyView({super.key, required this.applicationCubitController});

  @override
  _JobApplicationApplyViewState createState() => _JobApplicationApplyViewState();
}

class _JobApplicationApplyViewState extends State<JobApplicationApplyView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationCubit, ApplicationState>(
      bloc: widget.applicationCubitController,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                BackButtonWidget(),
                SizedBox(
                  width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.3.w,
                ),
                const ApplyViewTitleTextWidget(),
              ],
            ),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 30.0.h,
            ),
            JobApplyStepperView(applicationCubitController: widget.applicationCubitController),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 35.0.h,
            ),
            widget.applicationCubitController.activeStep == 0
                ? JobApplyStep1View(applicationCubitController: widget.applicationCubitController)
                : widget.applicationCubitController.activeStep == 1
                    ? JobApplyStep2View(applicationCubitController: widget.applicationCubitController)
                    : JobApplyStep3View(applicationCubitController: widget.applicationCubitController),
          ],
        );
      },
    );
  }
}
