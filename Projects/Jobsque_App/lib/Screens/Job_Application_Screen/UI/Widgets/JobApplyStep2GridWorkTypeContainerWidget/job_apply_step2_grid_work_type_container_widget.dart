// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/FixedSearchViewHelper/FixedSearchViewHelper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controllers/Application_Controller/application_cubit.dart';

class JobApplyStep2GridWorkTypeContainerWidget extends StatefulWidget {
  int? workIndex;
  final ApplicationCubit applicationCubitController;

  JobApplyStep2GridWorkTypeContainerWidget({super.key, required this.workIndex, required this.applicationCubitController});

  @override
  _JobApplyStep2GridWorkTypeContainerWidgetState createState() => _JobApplyStep2GridWorkTypeContainerWidgetState();
}

class _JobApplyStep2GridWorkTypeContainerWidgetState extends State<JobApplyStep2GridWorkTypeContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationCubit, ApplicationState>(
      bloc: widget.applicationCubitController,
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.0.h),
          decoration: BoxDecoration(
            color: widget.applicationCubitController.currentWorkTypeIdx == widget.workIndex
                ? const Color(0xffD6E4FF)
                : Colors.white,
            borderRadius: BorderRadius.circular(10.0.sp),
            border: Border.all(
              color: widget.applicationCubitController.currentWorkTypeIdx == widget.workIndex
                  ? const Color(0xff3366FF)
                  : const Color(0xffD1D5DB),
              width: 1.5,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    FixedSearchViewHelper.titles(widget.workIndex!),
                    textAlign: TextAlign.start,
                    softWrap: true,
                    style: TextStyle(
                      color: const Color(0xff111827),
                      fontFamily: TextFontFamily,
                      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "CV.pdf . Portfolio.pdf",
                    textAlign: TextAlign.start,
                    softWrap: true,
                    style: TextStyle(
                      color: const Color(0xff6B7280),
                      fontFamily: TextFontFamily,
                      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Radio<String>(
                value: FixedSearchViewHelper.titles(widget.workIndex!),
                groupValue: widget.applicationCubitController.workTypesGroupValue,
                onChanged: (value) {
                  widget.applicationCubitController.SelectingJobWorkType(widget.workIndex);
                },
                materialTapTargetSize: MaterialTapTargetSize.padded,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                splashRadius: 20.0.sp,
                activeColor: const Color(0xff3366FF),
              ),
            ],
          ),
        );
      },
    );
  }
}
