// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controller/home_bloc.dart';

class JobTitleWidget extends StatefulWidget {
  final int? jobIndex;
  final HomeBloc controller;

  const JobTitleWidget({super.key, required this.controller, required this.jobIndex});

  @override
  _JobTitleWidgetState createState() => _JobTitleWidgetState();
}

class _JobTitleWidgetState extends State<JobTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: widget.controller,
      builder: (context, state) {
        return widget.controller.isSuccessJobsData
            ? Text(
                widget.controller.jobsModel!.data![widget.jobIndex!].name!,
                textAlign: TextAlign.start,
                softWrap: true,
                style: TextStyle(
                  color: (widget.jobIndex! % 2) == 0 ? Colors.white : const Color(0xff111827),
                  fontSize: widget.controller.jobsModel!.data![widget.jobIndex!].name!.length <= 15
                      ? MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.sp
                      : MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
                  fontFamily: TextFontFamily,
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox();
      },
    );
  }
}
