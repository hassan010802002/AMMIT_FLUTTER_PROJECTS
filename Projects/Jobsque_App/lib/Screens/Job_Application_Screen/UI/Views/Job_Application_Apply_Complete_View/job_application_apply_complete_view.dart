// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Widgets/ApplyViewTitleTextWidget/apply_view_title_text_widget.dart';

class JobApplicationApplyCompleteView extends StatefulWidget {

  const JobApplicationApplyCompleteView({super.key});

  @override
  _JobApplicationApplyCompleteViewState createState() => _JobApplicationApplyCompleteViewState();
}

class _JobApplicationApplyCompleteViewState extends State<JobApplicationApplyCompleteView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            BackButtonWidget(),
            SizedBox(
              width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.3.w,
            ),
            const ApplyViewTitleTextWidget(),
          ],
        ),
        SizedBox(
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 5.0.h,
        ),
        OctoImage(
          image: const AssetImage("Assets/Images/Data Ilustration.png"),
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
          alignment: Alignment.center,
          width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.0.w,
          height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.0.h,
        ),
        Text(
          'Your data has been\nsuccessfully sent',
          style: TextStyle(
            color: const Color(0xff111827),
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 14.0.sp,
            fontWeight: FontWeight.w600,
            fontFamily: TextFontFamily,
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 15.0.h,
        ),
        Text(
          'You will get a message from our team, about the announcement of employee acceptance',
          style: TextStyle(
            color: const Color(0xff6B7280),
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
            fontWeight: FontWeight.w500,
            fontFamily: TextFontFamily,
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
