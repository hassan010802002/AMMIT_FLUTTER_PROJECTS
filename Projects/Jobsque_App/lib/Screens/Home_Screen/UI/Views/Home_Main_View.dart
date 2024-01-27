// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Home_Screen/Controller/home_bloc.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Views/JobsList_View/jobs_list_view.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Views/RecentJobs_View/recent_jobs_view.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Views/Top_View/top_view.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/Searching_Widget/searching_widget.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/Text1_Widget/text1_widget.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/Text2_Widget/text2_widget.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/ViewAll_Button/view_all_button.dart';

class HomeMainView extends StatefulWidget {
  final HomeBloc controller;

  const HomeMainView({super.key, required this.controller});

  @override
  State<HomeMainView> createState() => _HomeMainViewState();
}

class _HomeMainViewState extends State<HomeMainView> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w, top: 30.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopView(controller: widget.controller),
            SizedBox(
              height: 30.0.h,
            ),
            const SearchingWidget(),
            SizedBox(
              height: 10.0.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text1Widget(),
                ViewAllButton(),
              ],
            ),
            SizedBox(
              height: 10.0.h,
            ),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 4.0.h,
              child: JobsListView(blocController: widget.controller),
            ),
            SizedBox(
              height: 8.0.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text2Widget(),
                ViewAllButton(),
              ],
            ),
            SizedBox(
              height: 25.0.h,
            ),
            Expanded(
              child: RecentJobsView(blocController: widget.controller),
            ),
          ],
        ),
      ),
    );
  }
}
