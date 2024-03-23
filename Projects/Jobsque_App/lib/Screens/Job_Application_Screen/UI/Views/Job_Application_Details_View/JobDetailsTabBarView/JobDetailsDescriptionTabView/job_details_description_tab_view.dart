// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/DescriptionTextWidget/description_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobDetailsDescriptionTextWidget/job_details_description_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobDetailsSkillRequiredTextWidget/job_details_skill_required_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/SkillRequiredTextWidget/skill_required_text_widget.dart';

import '../../../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsDescriptionTabView extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobDetailsDescriptionTabView({super.key, required this.detailsCubitController});

  @override
  _JobDetailsDescriptionTabViewState createState() => _JobDetailsDescriptionTabViewState();
}

class _JobDetailsDescriptionTabViewState extends State<JobDetailsDescriptionTabView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      bloc: widget.detailsCubitController,
      builder: (context, state) {
        return widget.detailsCubitController!.isSuccessJobData
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 30.0.h,
                  ),
                  const DescriptionTextWidget(),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  JobDetailsDescriptionTextWidget(detailsCubitController: widget.detailsCubitController),
                  SizedBox(
                    height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 30.0.h,
                  ),
                  const SkillRequiredTextWidget(),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  JobDetailsSkillRequiredTextWidget(detailsCubitController: widget.detailsCubitController),
                ],
              )
            : const SizedBox();
      },
    );
  }
}
