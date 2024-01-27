// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/Home_Screen/Controller/home_bloc.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/FullTime_Container/full_time_container.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/JobApply_Button/job_apply_button.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/JobImage_Widget/job_image_widget.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/JobSalaryUnit_Text/job_salary_unit_text.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/JobSalary_Text/job_salary_text.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/JobSave_Icon/job_save_icon.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/JobSubTitle_Widget/job_subtitle_widget.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/JobTitle_Widget/job_title_widget.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/Remote_Container/remote_container.dart';

import '../../../Widgets/Design_Container/design_container.dart';

class JobContainerView extends StatefulWidget {
  int? jobIndex;
  final HomeBloc controller;

  JobContainerView({Key? key, required this.jobIndex, required this.controller}) : super(key: key);

  @override
  _JobContainerViewState createState() => _JobContainerViewState();
}

class _JobContainerViewState extends State<JobContainerView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: widget.controller,
      builder: (context, state) {
        return widget.controller.isSuccessJobsData
            ? GestureDetector(
                onTap: () {
                  NavigatorHelper(
                    context,
                    AppRoutes.applicationScreen,
                    screenArguments: <String, dynamic>{
                      "jobIndex": widget.jobIndex,
                      "callerBloc": widget.controller,
                    },
                  );
                },
                child: Container(
                  width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.15.w,
                  height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 5.0.h,
                  padding: EdgeInsets.symmetric(vertical: 15.0.h, horizontal: 12.0.w),
                  decoration: BoxDecoration(
                    color: (widget.jobIndex! % 2) == 0 ? const Color(0xff091A7A) : const Color(0xffF4F4F5),
                    borderRadius: BorderRadius.circular(20.0.sp),
                  ),
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              JobImageWidget(controller: widget.controller, jobIndex: widget.jobIndex),
                              SizedBox(
                                width: 10.0.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  JobTitleWidget(controller: widget.controller, jobIndex: widget.jobIndex),
                                  SizedBox(
                                    height: 3.0.h,
                                  ),
                                  JobSubTitleWidget(controller: widget.controller, jobIndex: widget.jobIndex),
                                ],
                              ),
                            ],
                          ),
                          JobSaveIcon(
                            jobIndex: widget.jobIndex,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FullTimeContainer(jobIndex: widget.jobIndex),
                          RemoteContainer(jobIndex: widget.jobIndex),
                          DesignContainer(jobIndex: widget.jobIndex),
                        ],
                      ),
                      SizedBox(
                        height: 25.0.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              JobSalaryText(controller: widget.controller, jobIndex: widget.jobIndex),
                              JobSalaryUnitText(index: widget.jobIndex),
                            ],
                          ),
                          JobApplyButton(controller: widget.controller, jobIndex: widget.jobIndex),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }
}
