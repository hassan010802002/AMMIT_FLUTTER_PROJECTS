// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsEmptyImageWidget/applied_jobs_empty_image_widget.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsEmptyText1Widget/applied_jobs_empty_text1_widget.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsEmptyText2Widget/applied_jobs_empty_text2_widget.dart';


class AppliedJobsEmptyView extends StatefulWidget {
  const AppliedJobsEmptyView({super.key});

  @override
  _AppliedJobsEmptyViewState createState() => _AppliedJobsEmptyViewState();
}

class _AppliedJobsEmptyViewState extends State<AppliedJobsEmptyView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 0.0.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppliedJobsEmptyImageWidget(),
          const AppliedJobsEmptyText1Widget(),
          SizedBox(
            height: 8.0.h,
          ),
          const AppliedJobsEmptyText2Widget(),
        ],
      ),
    );
  }
}
