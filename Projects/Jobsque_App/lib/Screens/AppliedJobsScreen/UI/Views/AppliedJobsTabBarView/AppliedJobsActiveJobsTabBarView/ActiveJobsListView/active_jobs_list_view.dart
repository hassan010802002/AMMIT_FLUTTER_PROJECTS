// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobPostTimeTextWidget/applied_job_post_time_text_widget.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsEasyStepperContainerWidget/applied_jobs_easy_stepper_container_widget.dart';

import '../../../../../Controller/applied_jobs_controller_bloc.dart';
import '../../../../Widgets/AppliedJobTypeContainerWidget/applied_job_type_container_widget.dart';
import '../../../../Widgets/AppliedJobsImageWidget/applied_jobs_image_widget.dart';
import '../../../../Widgets/AppliedJobsSaveIconButtonWidget/applied_jobs_save_icon_button_widget.dart';
import '../../../../Widgets/AppliedJobsSubTitleWidget/applied_jobs_sub_title_widget.dart';
import '../../../../Widgets/AppliedJobsTimeTypeContainerWidget/applied_jobs_time_type_container_widget.dart';
import '../../../../Widgets/AppliedJobsTitleWidget/applied_jobs_title_widget.dart';

class ActiveJobsListView extends StatefulWidget {
  final AppliedJobsControllerBloc appliedJobsControllerBloc;

  const ActiveJobsListView({super.key, required this.appliedJobsControllerBloc});

  @override
  _ActiveJobsListViewState createState() => _ActiveJobsListViewState();
}

class _ActiveJobsListViewState extends State<ActiveJobsListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppliedJobsControllerBloc, AppliedJobsControllerState>(
      bloc: widget.appliedJobsControllerBloc,
      builder: (context, state) {
        return widget.appliedJobsControllerBloc.isSuccessJobsData
            ? ListView.separated(
                primary: true,
                padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      NavigatorHelper(
                        context,
                        AppRoutes.appliedJobsApplicationScreen,
                        screenArguments: widget.appliedJobsControllerBloc.jobsModel!.data!.elementAt(index),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                AppliedJobsImageWidget(appliedJobsControllerBloc: widget.appliedJobsControllerBloc, appliedJobIndex: index),
                                SizedBox(
                                  width: 10.0.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppliedJobsTitleWidget(appliedJobsControllerBloc: widget.appliedJobsControllerBloc, appliedJobIndex: index),
                                    SizedBox(
                                      height: 3.0.h,
                                    ),
                                    AppliedJobsSubTitleWidget(appliedJobsControllerBloc: widget.appliedJobsControllerBloc, appliedJobIndex: index),
                                  ],
                                ),
                              ],
                            ),
                            AppliedJobsSaveIconButtonWidget(
                              appliedJobsControllerBloc: widget.appliedJobsControllerBloc,
                              appliedJobIndex: index,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                AppliedJobsTimeTypeContainerWidget(
                                    appliedJobsControllerBloc: widget.appliedJobsControllerBloc, appliedJobIndex: index),
                                SizedBox(
                                  width: 10.0.w,
                                ),
                                AppliedJobTypeContainerWidget(appliedJobsControllerBloc: widget.appliedJobsControllerBloc, appliedJobIndex: index),
                              ],
                            ),
                            const AppliedJobPostTimeTextWidget(),
                          ],
                        ),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        AppliedJobsEasyStepperContainerWidget(appliedJobsControllerBloc: widget.appliedJobsControllerBloc),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 20.0.h,
                    color: const Color(0xffE5E7EB),
                    thickness: 1.5.w,
                  );
                },
                itemCount: widget.appliedJobsControllerBloc.jobsModel!.data!.length,
              )
            : const SizedBox();
      },
    );
  }
}
