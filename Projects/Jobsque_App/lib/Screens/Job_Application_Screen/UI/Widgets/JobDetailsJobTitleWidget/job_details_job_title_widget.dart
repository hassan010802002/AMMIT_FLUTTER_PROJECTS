import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsJobTitleWidget extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobDetailsJobTitleWidget({Key? key, required this.detailsCubitController}) : super(key: key);

  @override
  _JobDetailsJobTitleWidgetState createState() => _JobDetailsJobTitleWidgetState();
}

class _JobDetailsJobTitleWidgetState extends State<JobDetailsJobTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      bloc: widget.detailsCubitController,
      builder: (context, state) {
        return widget.detailsCubitController!.isSuccessJobData
            ? Container(
                alignment: Alignment.center,
                height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.h,
                width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 5.0.w,
                decoration: BoxDecoration(
                  color: const Color(0xffD6E4FF),
                  borderRadius: BorderRadius.circular(25.0.sp),
                ),
                child: Center(
                  child: Text(
                    widget.detailsCubitController!.currentJobDetailsData!.jobType!,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: TextFontFamily,
                      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
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
