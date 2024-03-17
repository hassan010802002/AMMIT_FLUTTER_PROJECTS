// ignore_for_file: library_private_types_in_public_api

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';

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
          decoration: AppliedJobsConsts.containerStyle2,
          alignment: Alignment.center,
          child: Center(
            child: EasyStepper(
              onStepReached: (index) {
                widget.appliedJobsControllerBloc.UpdatingActiveStep(index);
              },
              activeStep: widget.appliedJobsControllerBloc.activeStep!,
              stepAnimationDuration: const Duration(milliseconds: 500),
              activeStepBorderType: BorderType.normal,
              activeStepBorderColor: AppliedJobsConsts.color6,
              borderThickness: 2.5,
              finishedStepBackgroundColor: AppliedJobsConsts.color7,
              finishedStepBorderColor: AppliedJobsConsts.color5,
              finishedStepBorderType: BorderType.normal,
              stepShape: StepShape.circle,
              maxReachedStep: 3,
              lineStyle: AppliedJobsConsts.stepperStyle1,
              unreachedStepBorderColor: AppliedJobsConsts.color8,
              unreachedStepBorderType: BorderType.normal,
              finishedStepIconColor: AppliedJobsConsts.color9,
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
                    style: AppliedJobsConsts.textStyle3(context,widget,index),
                  ),
                  customStep: ClipOval(
                    child: Container(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.center,
                      decoration: AppliedJobsConsts.containerStyle3(widget , index),
                      child: Center(
                        child: Text(
                          (index + 1).toString(),
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: AppliedJobsConsts.textStyle4(context , widget , index),
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
