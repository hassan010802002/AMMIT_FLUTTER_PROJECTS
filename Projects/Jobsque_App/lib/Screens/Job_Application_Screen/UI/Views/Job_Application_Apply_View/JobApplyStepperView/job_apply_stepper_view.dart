// ignore_for_file: library_private_types_in_public_api

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../Config/AppConfig.dart';
import '../../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../../Controllers/Application_Controller/application_cubit.dart';

class JobApplyStepperView extends StatefulWidget {
  final ApplicationCubit applicationCubitController;

  const JobApplyStepperView({super.key, required this.applicationCubitController});

  @override
  _JobApplyStepperViewState createState() => _JobApplyStepperViewState();
}

class _JobApplyStepperViewState extends State<JobApplyStepperView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationCubit, ApplicationState>(
      bloc: widget.applicationCubitController,
      builder: (context, state) {
        return EasyStepper(
          onStepReached: (index) {
            widget.applicationCubitController.UpdatingActiveStep(index);
          },
          activeStep: widget.applicationCubitController.activeStep!,
          stepAnimationDuration: const Duration(milliseconds: 500),
          activeStepBorderType: BorderType.normal,
          activeStepBorderColor: const Color(0xff3366FF),
          borderThickness: 2.5,
          finishedStepBackgroundColor: Colors.transparent,
          finishedStepBorderColor: const Color(0xffD1D5DB),
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
          internalPadding: 30.0.sp,
          stepRadius: 30.0.sp,
          showStepBorder: true,
          direction: Axis.horizontal,
          showLoadingAnimation: false,
          steps: List<EasyStep>.generate(
            3,
            (index) => EasyStep(
              customTitle: Text(
                widget.applicationCubitController.stepsTitles[index],
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
                  color: index == widget.applicationCubitController.activeStep! || widget.applicationCubitController.completedSteps.contains(index)
                      ? const Color(0xff3366FF)
                      : const Color(0xff111827),
                  fontFamily: TextFontFamily,
                ),
              ),
              customStep: ClipOval(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: index < widget.applicationCubitController.activeStep! && widget.applicationCubitController.completedSteps.contains(index)
                        ? const Color(0xff3366FF)
                        : Colors.transparent,
                  ),
                  child: Center(
                    child: widget.applicationCubitController.completedSteps.contains(index)
                        ? Icon(
                            FontAwesomeIcons.check,
                            color: Colors.white,
                            size: 30.0.sp,
                          )
                        : Text(
                            (index + 1).toString(),
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
                              color: index == widget.applicationCubitController.activeStep! ? const Color(0xff3366FF) : const Color(0xff9CA3AF),
                              fontFamily: TextFontFamily,
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
