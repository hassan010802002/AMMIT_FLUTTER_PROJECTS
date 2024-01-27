// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobDetailsImageWidget/job_details_image_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobDetailsTitleWidget/job_details_title_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobSaveIconButton/job_save_icon_button.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/ViewTitleWidget/view_title_widget.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';

import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobApplicationDetailsView extends StatefulWidget {
  final int? currentJobIndex;
  final DetailsCubit detailsCubitController;

  const JobApplicationDetailsView({Key? key, required this.detailsCubitController, required this.currentJobIndex}) : super(key: key);

  @override
  _JobApplicationDetailsViewState createState() => _JobApplicationDetailsViewState();
}

class _JobApplicationDetailsViewState extends State<JobApplicationDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButtonWidget(),
            const ViewTitleWidget(),
            JobSaveIconButton(detailsCubitController: widget.detailsCubitController),
          ],
        ),
        SizedBox(
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 25.0.h,
        ),
        JobDetailsImageWidget(
          detailsCubitController: widget.detailsCubitController,
          currentJobIndex: widget.currentJobIndex,
        ),
        SizedBox(
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 50.0.h,
        ),
        JobDetailsTitleWidget(
          currentJobIndex: widget.currentJobIndex,
          detailsCubitController: widget.detailsCubitController,
        ),
      ],
    );
  }
}
