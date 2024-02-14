// ignore_for_file: camel_case_types, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Views/AppliedJobsTabBarView/applied_jobs_tab_bar_view.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsScreenTitleTextWidget/applied_jobs_screen_title_text_widget.dart';
import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Controller/applied_jobs_controller_bloc.dart';


class AppliedJobsMainView extends StatefulWidget {
  final AppliedJobsControllerBloc appliedJobsControllerBloc;

  const AppliedJobsMainView({super.key, required this.appliedJobsControllerBloc});

  @override
  State<AppliedJobsMainView> createState() => _AppliedJobsMainViewState();
}

class _AppliedJobsMainViewState extends State<AppliedJobsMainView> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButtonWidget(),
                const AppliedJobsScreenTitleTextWidget(),
                const SizedBox()
              ],
            ),
          ),
          DefaultTabController(
            length: 2,
            animationDuration: const Duration(milliseconds: 300),
            child: AppliedJobsTabBarView(appliedJobsControllerBloc: widget.appliedJobsControllerBloc),
          ),
        ],
      ),
    );
  }
}
