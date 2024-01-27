// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controller/home_bloc.dart';

class JobImageWidget extends StatefulWidget {
  final HomeBloc controller;
  final int? jobIndex;

  const JobImageWidget({Key? key, required this.controller, required this.jobIndex}) : super(key: key);

  @override
  _JobImageWidgetState createState() => _JobImageWidgetState();
}

class _JobImageWidgetState extends State<JobImageWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: widget.controller,
      builder: (context, state) {
        return widget.controller.isSuccessJobsData
            ? Container(
                height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.h,
                width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0.sp),
                  image: DecorationImage(
                    image: NetworkImage(widget.controller.jobsModel!.data![widget.jobIndex!].image!),
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }
}
