// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/SearchScreen/Controller/search_bloc.dart';

class JobSalaryDemoText extends StatefulWidget {
  final int? jobIndex;
  final SearchBloc controller;

  const JobSalaryDemoText({super.key, required this.jobIndex, required this.controller});

  @override
  _JobSalaryDemoTextState createState() => _JobSalaryDemoTextState();
}

class _JobSalaryDemoTextState extends State<JobSalaryDemoText> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: widget.controller,
      builder: (context, state) {
        return widget.controller.isSuccessJobsData
            ? Text(
                widget.controller.isSuccessJobsFilter
                    ? "\$${int.tryParse(widget.controller.jobsFilterData![widget.jobIndex!].salary!)! / 1000} "
                    : "\$${int.tryParse(widget.controller.jobsModel!.data![widget.jobIndex!].salary!)! / 1000} ",
                textAlign: TextAlign.start,
                softWrap: true,
                style: TextStyle(
                  color: const Color(0xff2E8E18),
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
                  fontFamily: TextFontFamily,
                  fontWeight: FontWeight.w500,
                ),
              )
            : const SizedBox();
      },
    );
  }
}
