// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/Details_Controller/details_cubit.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobDetailsTimeTypeContainerWidget extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobDetailsTimeTypeContainerWidget({super.key, required this.detailsCubitController});

  @override
  _JobDetailsTimeTypeContainerWidgetState createState() => _JobDetailsTimeTypeContainerWidgetState();
}

class _JobDetailsTimeTypeContainerWidgetState extends State<JobDetailsTimeTypeContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      bloc: widget.detailsCubitController,
      builder: (context, state) {
        return widget.detailsCubitController!.isSuccessJobData
            ? Container(
                alignment: Alignment.center,
                height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.h,
                width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.0.w,
                decoration: BoxDecoration(
                  color: const Color(0xffD6E4FF),
                  borderRadius: BorderRadius.circular(25.0.sp),
                ),
                child: Center(
                  child: Text(
                    widget.detailsCubitController!.currentJobDetailsData!.jobTimeType!,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: TextFontFamily,
                      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                      color: const Color(0xff3366FF),
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
