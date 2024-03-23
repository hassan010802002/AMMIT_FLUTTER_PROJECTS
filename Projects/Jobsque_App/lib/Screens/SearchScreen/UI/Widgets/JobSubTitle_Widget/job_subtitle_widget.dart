// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controller/search_bloc.dart';

class JobSubTitleWidget extends StatefulWidget {
  final int? jobIndex;
  final SearchBloc controller;

  const JobSubTitleWidget({super.key, required this.controller, required this.jobIndex});

  @override
  _JobSubTitleWidgetState createState() => _JobSubTitleWidgetState();
}

class _JobSubTitleWidgetState extends State<JobSubTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: widget.controller,
      builder: (context, state) {
        return widget.controller.isSuccessJobsData
            ? Text(
                widget.controller.isSuccessJobsFilter
                    ? widget.controller.jobsFilterData![widget.jobIndex!].location!.length > 30
                        ? "${widget.controller.jobsFilterData![widget.jobIndex!].location!.substring(0, 30)}..."
                        : widget.controller.jobsFilterData![widget.jobIndex!].location!
                    : widget.controller.jobsModel!.data![widget.jobIndex!].location!.length > 30
                        ? "${widget.controller.jobsModel!.data![widget.jobIndex!].location!.substring(0, 30)}..."
                        : widget.controller.jobsModel!.data![widget.jobIndex!].location!,
                textAlign: TextAlign.start,
                softWrap: true,
                style: TextStyle(
                  color: const Color(0xff9CA3AF),
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
                  fontFamily: TextFontFamily,
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox();
      },
    );
  }
}
