// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Views/Job_Application_Apply_Complete_View/job_application_apply_complete_view.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Views/Job_Application_Apply_View/job_application_apply_view.dart';

import '../../Controllers/Application_Controller/application_cubit.dart';
import '../../Controllers/Details_Controller/details_cubit.dart';
import '../../Controllers/job_application_cubit.dart';
import '../Widgets/JobApplicationButtonWidget/job_application_button_widget.dart';
import 'Job_Application_Details_View/job_application_details_view.dart';

class JobApplicationMainView extends StatefulWidget {
  final JobApplicationCubit mainCubitController;
  final ApplicationCubit applicationCubitController;
  final DetailsCubit detailsCubitController;

  const JobApplicationMainView({
    super.key,
    required this.mainCubitController,
    required this.applicationCubitController,
    required this.detailsCubitController,
  });

  @override
  _JobApplicationMainViewState createState() => _JobApplicationMainViewState();
}

class _JobApplicationMainViewState extends State<JobApplicationMainView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobApplicationCubit, JobApplicationState>(
      bloc: widget.mainCubitController,
      builder: (context, state) {
        return SingleChildScrollView(
          primary: true,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
                child: Column(
                  children: [
                    (state is JobApplicationDetailsViewState || state is JobApplicationInitial) && widget.mainCubitController.isJobDetailsView
                        ? JobApplicationDetailsView(detailsCubitController: widget.detailsCubitController)
                        : state is JobApplicationApplyViewState && widget.mainCubitController.isJobApplyView
                            ? JobApplicationApplyView(applicationCubitController: widget.applicationCubitController)
                            : const JobApplicationApplyCompleteView(),
                    SizedBox(
                      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 10.0.h,
                    ),
                    JobApplicationButtonWidget(
                      mainCubitController: widget.mainCubitController,
                      applicationCubitController: widget.applicationCubitController,
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }
}
