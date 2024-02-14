// ignore_for_file: library_private_types_in_public_api

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/applied_jobs_controller_bloc.dart';

class AppliedJobsEasyStepperContainerWidget extends StatefulWidget {
  final AppliedJobsControllerBloc appliedJobsControllerBloc;

  const AppliedJobsEasyStepperContainerWidget({super.key, required this.appliedJobsControllerBloc});

  @override
  _AppliedJobsEasyStepperContainerWidgetState createState() => _AppliedJobsEasyStepperContainerWidgetState();
}

class _AppliedJobsEasyStepperContainerWidgetState extends State<AppliedJobsEasyStepperContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppliedJobsControllerBloc, AppliedJobsControllerState>(
      bloc: widget.appliedJobsControllerBloc,
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0.sp),
            border: Border.all(
              color: const Color(0xffD1D5DB),
              strokeAlign: BorderSide.strokeAlignInside,
              width: 1.5.w,
            ),
          ),
          alignment: Alignment.center,
          child: Center(
            child: EasyStepper(
              onStepReached: (index) {
                widget.appliedJobsControllerBloc.UpdatingActiveStep(index);
              },
              activeStep: widget.appliedJobsControllerBloc.activeStep!,
              stepAnimationDuration: const Duration(milliseconds: 500),
              activeStepBorderType: BorderType.normal,
              activeStepBorderColor: const Color(0xff3366FF),
              borderThickness: 2.5,
              finishedStepBackgroundColor: Colors.transparent,
              finishedStepBorderColor: const Color(0xff3366FF),
              finishedStepBorderType: BorderType.normal,
              stepShape: StepShape.circle,
              maxReachedStep: 3,
              lineStyle: LineStyle(
                lineType: LineType.dashed,
                activeLineColor: const Color(0xffD1D5DB),
                finishedLineColor: const Color(0xff3366FF),
                lineLength: 35.0.w,
                lineSpace: 5.0.w,
                lineThickness: 1.5.sp,
                unreachedLineColor: const Color(0xffD1D5DB),
                unreachedLineType: LineType.dashed,
                lineWidth: 5.0.w,
              ),
              unreachedStepBorderColor: const Color(0xff9CA3AF),
              unreachedStepBorderType: BorderType.normal,
              finishedStepIconColor: Colors.white,
              internalPadding: 50.0.sp,
              stepRadius: 18.0.sp,
              showStepBorder: true,
              direction: Axis.horizontal,
              showLoadingAnimation: false,
              steps: List<EasyStep>.generate(
                3,
                (index) => EasyStep(
                  customTitle: Text(
                    widget.appliedJobsControllerBloc.stepsTitles[index],
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
                      color: widget.appliedJobsControllerBloc.completedSteps.contains(index)
                          ? const Color(0xff3366FF)
                          : const Color(0xff111827),
                      fontFamily: TextFontFamily,
                    ),
                  ),
                  customStep: ClipOval(
                    child: Container(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: widget.appliedJobsControllerBloc.completedSteps.contains(index)
                            ? const Color(0xff3366FF)
                            : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          (index + 1).toString(),
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
                            color: widget.appliedJobsControllerBloc.completedSteps.contains(index) ? const Color(0xffF4F4F5) : const Color(0xff9CA3AF),
                            fontFamily: TextFontFamily,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
