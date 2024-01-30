import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsWebsiteContainerWidget extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobDetailsWebsiteContainerWidget({Key? key, required this.detailsCubitController}) : super(key: key);

  @override
  _JobDetailsWebsiteContainerWidgetState createState() => _JobDetailsWebsiteContainerWidgetState();
}

class _JobDetailsWebsiteContainerWidgetState extends State<JobDetailsWebsiteContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      bloc: widget.detailsCubitController,
      builder: (context, state) {
        return widget.detailsCubitController!.isSuccessJobData
            ? Container(
                height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 12.0.h,
                padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.0.h),
                width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.35.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0.sp),
                  border: Border.all(
                    color: const Color(0xffE5E7EB),
                    width: 1.5.w,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Website',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: const Color(0xff9CA3AF),
                        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: TextFontFamily,
                      ),
                    ),
                    Text(
                      widget.detailsCubitController!.currentJobDetailsData!.compWebsite!,
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: const Color(0xff111827),
                        fontSize: widget.detailsCubitController!.currentJobDetailsData!.compWebsite!.length > 20
                            ? MediaQuery_Size_Helper.MAX_WIDTH(context)! / 34.0.sp
                            : MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
                        fontWeight: FontWeight.w800,
                        fontFamily: TextFontFamily,
                      ),
                    ),
                  ],
                ),
              )
            : const SizedBox();
      },
    );
  }
}
