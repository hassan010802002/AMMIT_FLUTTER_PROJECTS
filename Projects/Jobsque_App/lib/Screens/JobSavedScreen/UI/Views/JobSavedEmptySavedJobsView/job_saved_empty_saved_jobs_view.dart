// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Widgets/JobSavedTitleTextWidget/job_saved_title_text_widget.dart';

class JobSavedEmptySavedJobsView extends StatefulWidget {
  const JobSavedEmptySavedJobsView({super.key});

  @override
  _JobSavedEmptySavedJobsViewState createState() => _JobSavedEmptySavedJobsViewState();
}

class _JobSavedEmptySavedJobsViewState extends State<JobSavedEmptySavedJobsView> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButtonWidget(),
                const JobSavedTitleTextWidget(),
                const SizedBox(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OctoImage(
                  image: const AssetImage("Assets/Images/Saved Ilustration.png"),
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                  alignment: Alignment.center,
                  height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.2.h,
                  width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.2.w,
                ),
                Text(
                  'Nothing has been saved yet',
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff111827),
                    fontFamily: TextFontFamily,
                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 16.0.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Press the star icon on the job you want to save.',
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff6B7280),
                    fontFamily: TextFontFamily,
                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
