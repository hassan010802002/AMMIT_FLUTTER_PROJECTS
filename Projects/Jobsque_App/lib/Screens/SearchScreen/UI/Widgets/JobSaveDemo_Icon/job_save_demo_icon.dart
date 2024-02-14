// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:octo_image/octo_image.dart';

import '../../../Controller/search_bloc.dart';

class JobSaveDemoIcon extends StatefulWidget {
  final int? jobIndex;
  final SearchBloc controller;

  const JobSaveDemoIcon({super.key, required this.jobIndex, required this.controller});

  @override
  _JobSaveDemoIconState createState() => _JobSaveDemoIconState();
}

class _JobSaveDemoIconState extends State<JobSaveDemoIcon> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: widget.controller,
      builder: (context, state) {
        return widget.controller.isSuccessJobsData
            ? IconButton(
                icon: OctoImage(
                  image: widget.controller.savedJobs.contains(widget.jobIndex) && widget.controller.savedJobIdx == widget.jobIndex
                      ? const AssetImage("Assets/Images/archive-minus2.png")
                      : const AssetImage("Assets/Images/archive-minus.png"),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.contain,
                  width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.w,
                  height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h,
                  alignment: Alignment.center,
                  color: const Color(0xff111827),
                ),
                onPressed: () {
                  widget.controller.ChangingJobSaveStatus(widget.jobIndex);
                },
                style: ButtonStyle(
                  visualDensity: VisualDensity.comfortable,
                  alignment: Alignment.center,
                  padding: MaterialStatePropertyAll(EdgeInsets.all(5.0.sp)),
                  fixedSize: MaterialStatePropertyAll(
                    Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h),
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }
}
