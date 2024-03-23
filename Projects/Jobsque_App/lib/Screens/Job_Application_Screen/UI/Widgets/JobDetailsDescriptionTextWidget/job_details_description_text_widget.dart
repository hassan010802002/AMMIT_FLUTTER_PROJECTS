// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsDescriptionTextWidget extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobDetailsDescriptionTextWidget({super.key, required this.detailsCubitController});

  @override
  _JobDetailsDescriptionTextWidgetState createState() => _JobDetailsDescriptionTextWidgetState();
}

class _JobDetailsDescriptionTextWidgetState extends State<JobDetailsDescriptionTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.detailsCubitController!.currentJobDetailsData!.jobDescription!,
      softWrap: true,
      textAlign: TextAlign.justify,
      style: TextStyle(
        color: const Color(0xff4B5563),
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
        fontFamily: TextFontFamily,
      ),
    );
  }
}
