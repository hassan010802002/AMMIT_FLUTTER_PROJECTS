// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controller/home_bloc.dart';

class JobSalaryText extends StatefulWidget {
  final int? jobIndex;
  final HomeBloc controller;

  const JobSalaryText({Key? key, required this.jobIndex, required this.controller}) : super(key: key);

  @override
  _JobSalaryTextState createState() => _JobSalaryTextState();
}

class _JobSalaryTextState extends State<JobSalaryText> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: widget.controller,
      builder: (context, state) {
        return widget.controller.isSuccessJobsData
            ? Text(
                "\$${int.tryParse(widget.controller.jobsModel!.data![widget.jobIndex!].salary!)! / 1000} ",
                textAlign: TextAlign.start,
                softWrap: true,
                style: TextStyle(
                  color: (widget.jobIndex! % 2) == 0? Colors.white : const Color(0xff111827),
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.sp,
                  fontFamily: TextFontFamily,
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox();
      },
    );
  }
}
