// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque_app/Screens/JobSavedScreen/UI/Views/JobSavedMyJobsView/JobSavedJobSheetView/job_saved_job_sheet_view.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/job_saved_controller_bloc.dart';

class JobSavedMyJobsListContainerWidget extends StatefulWidget {
  final int jobIndex;
  final JobSavedControllerBloc jobSavedBlocController;

  const JobSavedMyJobsListContainerWidget({super.key, required this.jobSavedBlocController, required this.jobIndex});

  @override
  _JobSavedMyJobsListContainerWidgetState createState() => _JobSavedMyJobsListContainerWidgetState();
}

class _JobSavedMyJobsListContainerWidgetState extends State<JobSavedMyJobsListContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 7.5.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.5.h,
                    width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.5.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0.sp),
                      image: DecorationImage(
                        image: NetworkImage(widget.jobSavedBlocController.jobsModel!.data![widget.jobIndex].image!),
                        fit: BoxFit.contain,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.jobSavedBlocController.jobsModel!.data![widget.jobIndex].name!.length > 20
                            ? "${widget.jobSavedBlocController.jobsModel!.data![widget.jobIndex].name!.substring(0, 20)}..."
                            : widget.jobSavedBlocController.jobsModel!.data![widget.jobIndex].name!,
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xff111827),
                          fontFamily: TextFontFamily,
                          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        widget.jobSavedBlocController.jobsModel!.data![widget.jobIndex].location!.length > 30
                            ? "${widget.jobSavedBlocController.jobsModel!.data![widget.jobIndex].location!.substring(0, 30)}..."
                            : widget.jobSavedBlocController.jobsModel!.data![widget.jobIndex].location!,
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xff374151),
                          fontFamily: TextFontFamily,
                          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                splashRadius: 30.0.sp,
                style: ButtonStyle(
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                    iconSize: MaterialStatePropertyAll(35.0.sp),
                    alignment: Alignment.center,
                    fixedSize: MaterialStatePropertyAll(
                      Size(
                        MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w,
                        MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.h,
                      ),
                    )),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    isScrollControlled: true,
                    enableDrag: true,
                    builder: (context) {
                      return JobSavedJobSheetView(
                        jobIndex: widget.jobIndex,
                        jobSavedBlocController: widget.jobSavedBlocController,
                      );
                    },
                  );
                },
                icon: OctoImage(
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                  image: const AssetImage("Assets/Images/more.png"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Posted 2 days ago',
                softWrap: true,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: const Color(0xff374151),
                  fontFamily: TextFontFamily,
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.clock,
                    size: 14.0.sp,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 8.0.w,
                  ),
                  Text(
                    'Be an early applicant',
                    softWrap: true,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: const Color(0xff374151),
                      fontFamily: TextFontFamily,
                      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
