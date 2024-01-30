// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/SearchScreen/Controller/search_bloc.dart';

import '../../../../Widgets/DesignDemo_Container/design_demo_container.dart';
import '../../../../Widgets/FullTimeDemo_Container/full_time_demo_container.dart';
import '../../../../Widgets/JobImage_Widget/job_image_widget.dart';
import '../../../../Widgets/JobSalaryDemoUnit_Text/job_salary_demo_unit_text.dart';
import '../../../../Widgets/JobSalaryDemo_Text/job_salary_demo_text.dart';
import '../../../../Widgets/JobSaveDemo_Icon/job_save_demo_icon.dart';
import '../../../../Widgets/JobSubTitle_Widget/job_subtitle_widget.dart';
import '../../../../Widgets/JobTitleDemo_Widget/job_title_demo_widget.dart';
import '../../../../Widgets/RemoteDemo_Container/remote_demo_container.dart';

class JobsDemoView extends StatefulWidget {
  final int? jobIndex;
  final SearchBloc controller;

  const JobsDemoView({Key? key, required this.controller, required this.jobIndex}) : super(key: key);

  @override
  _JobsDemoViewState createState() => _JobsDemoViewState();
}

class _JobsDemoViewState extends State<JobsDemoView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: widget.controller,
      builder: (context, state) {
        return widget.controller.isSuccessJobsData
            ? GestureDetector(
                onTap: () {
                  NavigatorHelper(
                    context,
                    AppRoutes.applicationSearchScreen,
                    screenArguments: widget.controller.jobsModel!.data![widget.jobIndex!],
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
                            JobImageWidget(controller: widget.controller, jobIndex: widget.jobIndex),
                            SizedBox(
                              width: 10.0.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                JobTitleDemoWidget(controller: widget.controller, jobIndex: widget.jobIndex),
                                SizedBox(
                                  height: 3.0.h,
                                ),
                                JobSubTitleWidget(controller: widget.controller, jobIndex: widget.jobIndex),
                              ],
                            ),
                          ],
                        ),
                        JobSaveDemoIcon(
                          controller: widget.controller,
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
                        const FullTimeDemoContainer(),
                        const RemoteDemoContainer(),
                        const DesignDemoContainer(),
                        JobSalaryDemoText(controller: widget.controller, jobIndex: widget.jobIndex),
                        const JobSalaryDemoUnitText(),
                      ],
                    ),
                  ],
                ),
              )
            : const SizedBox();
      },
    );
  }
}
