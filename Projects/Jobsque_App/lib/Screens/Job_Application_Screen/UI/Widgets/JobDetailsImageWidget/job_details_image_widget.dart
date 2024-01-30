// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsImageWidget extends StatefulWidget {
  final DetailsCubit detailsCubitController;

  const JobDetailsImageWidget({Key? key, required this.detailsCubitController}) : super(key: key);

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
                height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h,
                width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0.sp),
                  image: DecorationImage(
                    image: NetworkImage(widget.detailsCubitController.currentJobDetailsData!.image!),
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
