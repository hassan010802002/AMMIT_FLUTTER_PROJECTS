// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/Custom_Button/Custom_Button.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controllers/Application_Controller/application_cubit.dart';
import '../../../Controllers/job_application_cubit.dart';

class JobApplicationButtonWidget extends StatefulWidget {
  final JobApplicationCubit mainCubitController;
  final ApplicationCubit applicationCubitController;

  const JobApplicationButtonWidget({super.key, required this.mainCubitController, required this.applicationCubitController});

  @override
  _JobApplicationButtonWidgetState createState() => _JobApplicationButtonWidgetState();
}

class _JobApplicationButtonWidgetState extends State<JobApplicationButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobApplicationCubit, JobApplicationState>(
      bloc: widget.mainCubitController,
      builder: (context, state) {
        return CustomButton(
          style: TextStyle(
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: TextFontFamily,
          ),
          onPressed: () {
            if (state is JobApplicationApplyViewState && widget.applicationCubitController.activeStep! != 2) {
              widget.applicationCubitController.ChangingActiveStep();
            } else {
              widget.mainCubitController.ChangingMainView(context);
            }
          },
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45.0.sp),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(Color(0xff3366FF)),
          buttonText: state is JobApplicationInitial || state is JobApplicationDetailsViewState
              ? "Apply now"
              : state is JobApplicationApplyViewState
                  ? "Next"
                  : "Back to home",
          fixedSize: MaterialStatePropertyAll(
            Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 16.0.h),
          ),
        );
      },
    );
  }
}
