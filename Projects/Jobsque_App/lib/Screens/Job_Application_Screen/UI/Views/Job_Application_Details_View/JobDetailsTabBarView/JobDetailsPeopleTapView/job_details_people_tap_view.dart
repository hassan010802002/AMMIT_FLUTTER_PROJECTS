// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Views/Job_Application_Details_View/JobDetailsTabBarView/JobDetailsPeopleTapView/JobDetailsPeopleListView/job_details_people_list_view.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobDetailsFixedJobTitleTextWidget/job_details_fixed_job_title_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobDetailsFixedJobTitlesMenuWidget/job_details_fixed_job_titles_menu_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobDetailsNumberOfEmployeesTextWidget/job_details_number_of_employees_text_widget.dart';

import '../../../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsPeopleTapView extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobDetailsPeopleTapView({super.key, required this.detailsCubitController});

  @override
  _JobDetailsPeopleTapViewState createState() => _JobDetailsPeopleTapViewState();
}

class _JobDetailsPeopleTapViewState extends State<JobDetailsPeopleTapView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      bloc: widget.detailsCubitController!,
      builder: (context, state) {
        return widget.detailsCubitController!.isSuccessJobData
            ? Column(
                children: [
                  SizedBox(
                    height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 30.0.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          JobDetailsNumberOfEmployeesTextWidget(),
                          JobDetailsFixedJobTitleTextWidget(),
                        ],
                      ),
                      JobDetailsFixedJobTitlesMenuWidget(detailsCubitController: widget.detailsCubitController),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 35.0.h,
                  ),
                  SizedBox(
                    height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 3.0.h,
                    child: const JobDetailsPeopleListView(),
                  ),
                ],
              )
            : const SizedBox();
      },
    );
  }
}
