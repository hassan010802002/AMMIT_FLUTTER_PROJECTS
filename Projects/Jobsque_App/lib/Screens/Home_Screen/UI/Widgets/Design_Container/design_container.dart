// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controller/home_bloc.dart';

class DesignContainer extends StatefulWidget {
  final int? jobIndex;
  final HomeBloc controller;

  const DesignContainer({super.key, required this.jobIndex, required this.controller});

  @override
  _DesignContainerState createState() => _DesignContainerState();
}

class _DesignContainerState extends State<DesignContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: widget.controller,
      builder: (context, state) {
        return widget.controller.isSuccessJobsData
            ? Container(
                alignment: Alignment.center,
                height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.h,
                width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 5.0.w,
                decoration: BoxDecoration(
                  color: (widget.jobIndex! % 2) == 0 ? Colors.white.withOpacity(0.14) : const Color(0xffD6E4FF),
                  borderRadius: BorderRadius.circular(25.0.sp),
                ),
                child: Center(
                  child: Text(
                    widget.controller.jobsModel!.data![widget.jobIndex!].jobType!,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: TextFontFamily,
                      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
                      color: (widget.jobIndex! % 2) == 0 ? Colors.white : const Color(0xff111827),
                    ),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }
}
