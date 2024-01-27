// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsImageWidget extends StatefulWidget {
  final int? currentJobIndex;
  final DetailsCubit detailsCubitController;

  const JobDetailsImageWidget({Key? key, required this.detailsCubitController, required this.currentJobIndex}) : super(key: key);

  @override
  _JobDetailsImageWidgetState createState() => _JobDetailsImageWidgetState();
}

class _JobDetailsImageWidgetState extends State<JobDetailsImageWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      bloc: widget.detailsCubitController,
      builder: (context, state) {
        return widget.detailsCubitController.isSuccessJobData
            ? Container(
                height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.5.h,
                width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.5.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0.sp),
                  image: DecorationImage(
                    image: NetworkImage(widget.detailsCubitController.currentJobModel!.data![widget.currentJobIndex!].image!),
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
