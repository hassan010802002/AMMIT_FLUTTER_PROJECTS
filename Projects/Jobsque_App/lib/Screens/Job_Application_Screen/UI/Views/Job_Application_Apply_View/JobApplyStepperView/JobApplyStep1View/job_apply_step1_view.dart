// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyBioDataTextWidget/job_apply_bio_data_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyEmailTextWidget/job_apply_email_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyFullNameTextWidget/job_apply_full_name_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyPhoneField/job_apply_phone_field.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyPhoneTextWidget/job_apply_phone_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyStep1EmailTextFieldWidget/job_apply_step1_email_text_field_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyStep1NameTextFieldWidget/job_apply_step1_name_text_field_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobApplyStepTextWidget/job_apply_step_text_widget.dart';
import '../../../../../Controllers/Application_Controller/application_cubit.dart';

class JobApplyStep1View extends StatefulWidget {
  final ApplicationCubit applicationCubitController;

  const JobApplyStep1View({super.key, required this.applicationCubitController});

  @override
  _JobApplyStep1ViewState createState() => _JobApplyStep1ViewState();
}

class _JobApplyStep1ViewState extends State<JobApplyStep1View> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        primary: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const JobApplyBioDataTextWidget(),
            const JobApplyStepTextWidget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 35.0.h,
            ),
            const JobApplyFullNameTextWidget(),
            SizedBox(
              height: 8.0.h,
            ),
            JobApplyStep1NameTextFieldWidget(applicationCubitController: widget.applicationCubitController),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 35.0.h,
            ),
            const JobApplyEmailTextWidget(),
            SizedBox(
              height: 8.0.h,
            ),
            JobApplyStep1EmailTextFieldWidget(applicationCubitController: widget.applicationCubitController),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 35.0.h,
            ),
            const JobApplyPhoneTextWidget(),
            SizedBox(
              height: 8.0.h,
            ),
            JobApplyPhoneField(applicationCubitController: widget.applicationCubitController),
          ],
        ),
      ),
    );
  }
}
