// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/Details_Controller/details_cubit.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobDetailsLocationWidget extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobDetailsLocationWidget({super.key, required this.detailsCubitController});

  @override
  _JobDetailsLocationWidgetState createState() => _JobDetailsLocationWidgetState();
}

class _JobDetailsLocationWidgetState extends State<JobDetailsLocationWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      bloc: widget.detailsCubitController,
      builder: (context, state) {
        return widget.detailsCubitController!.isSuccessJobData
            ? Text(
                widget.detailsCubitController!.currentJobDetailsData!.location!.length > 30
                    ? "${widget.detailsCubitController!.currentJobDetailsData!.location!.substring(0, 30)}..."
                    : widget.detailsCubitController!.currentJobDetailsData!.location!,
                textAlign: TextAlign.start,
                softWrap: true,
                style: TextStyle(
                  color: const Color(0xff374151),
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
                  fontFamily: TextFontFamily,
                  fontWeight: FontWeight.w400,
                ),
              )
            : const SizedBox();
      },
    );
  }
}
