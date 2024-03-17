// ignore_for_file: file_names

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/Colors/AppliedJobsColors.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsEasyStepperContainerWidget/applied_jobs_easy_stepper_container_widget.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsImageWidget/applied_jobs_image_widget.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsTitleWidget/applied_jobs_title_widget.dart';

import '../../../../Config/AppConfig.dart';
import '../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class AppliedJobsStyles {
  ///////////////////////////////TextStyles///////////////////////////////////////

  static TextStyle Function(BuildContext context) textStyle1 = (context) => TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
        color: AppliedJobsColors.color1,
      );
  static TextStyle Function(BuildContext context) textStyle2 = (context) => TextStyle(
        color: AppliedJobsColors.color4,
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
        fontFamily: TextFontFamily,
      );
  static TextStyle Function(BuildContext context, AppliedJobsEasyStepperContainerWidget widget, int? index) textStyle3 =
      (context, widget, index) => TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
            color: widget.appliedJobsControllerBloc.completedSteps.contains(index) ? AppliedJobsColors.color6 : AppliedJobsColors.color10,
            fontFamily: TextFontFamily,
          );
  static TextStyle Function(BuildContext context, AppliedJobsEasyStepperContainerWidget widget, int? index) textStyle4 =
      (context, widget, index) => TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
            color: widget.appliedJobsControllerBloc.completedSteps.contains(index)
                ? AppliedJobsColors.color2
                : AppliedJobsColors.color8,
            fontFamily: TextFontFamily,
          );
  static TextStyle Function(BuildContext context) textStyle5 =
      (context) => TextStyle(
        color: AppliedJobsColors.color10,
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.sp,
        fontWeight: FontWeight.w800,
      );
  static TextStyle Function(BuildContext context) textStyle6 =
      (context) => TextStyle(
        color: AppliedJobsColors.color8,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w600,
      );
  static TextStyle Function(BuildContext context) textStyle7 =
      (context) => TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
        color: AppliedJobsColors.color6,
      );
  static TextStyle Function(BuildContext context , AppliedJobsTitleWidget widget) textStyle8 =
      (context,widget) => TextStyle(
        color: AppliedJobsColors.color10,
        fontSize: widget.appliedJobsControllerBloc.jobsModel!.data![widget.appliedJobIndex].name!.length <= 15
            ? MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.sp
            : MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w600,
      );
  static TextStyle Function(BuildContext context ) textStyle9 =
      (context) => TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
        color: AppliedJobsColors.color6,
      );
  static TextStyle Function(BuildContext context ) textStyle10 =
      (context) => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontFamily: TextFontFamily,
      );
  static TextStyle Function(BuildContext context ) textStyle11 =
      (context) => TextStyle(
        color: AppliedJobsColors.color10,
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 16.0.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle Function(BuildContext context ) textStyle12 =
      (context) => TextStyle(
        color: AppliedJobsColors.color4,
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
        fontWeight: FontWeight.w500,
      );

  /////////////////////////////ContainerStyles///////////////////////////////////

  static final BoxDecoration containerStyle1 = BoxDecoration(
    color: AppliedJobsColors.color2,
    border: Border.symmetric(
      horizontal: BorderSide(
        color: AppliedJobsColors.color3,
        width: 1.5.w,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
    ),
  );
  static final BoxDecoration containerStyle2 = BoxDecoration(
    borderRadius: BorderRadius.circular(12.0.sp),
    border: Border.all(
      color: AppliedJobsColors.color5,
      strokeAlign: BorderSide.strokeAlignInside,
      width: 1.5.w,
    ),
  );
  static final LineStyle stepperStyle1 = LineStyle(
    lineType: LineType.dashed,
    activeLineColor: AppliedJobsColors.color5,
    finishedLineColor: AppliedJobsColors.color6,
    lineLength: 35.0.w,
    lineSpace: 5.0.w,
    lineThickness: 1.5.sp,
    unreachedLineColor: AppliedJobsColors.color5,
    unreachedLineType: LineType.dashed,
    lineWidth: 5.0.w,
  );
  static BoxDecoration Function(AppliedJobsEasyStepperContainerWidget widget, int? index) containerStyle3 = (widget, index) => BoxDecoration(
        color: widget.appliedJobsControllerBloc.completedSteps.contains(index) ? AppliedJobsColors.color6 : AppliedJobsColors.color7,
      );
  static BoxDecoration Function(AppliedJobsImageWidget widget) containerStyle4 = (widget) =>BoxDecoration(
    color: AppliedJobsColors.color9,
    borderRadius: BorderRadius.circular(8.0.sp),
    image: DecorationImage(
      image: NetworkImage(widget.appliedJobsControllerBloc.jobsModel!.data![widget.appliedJobIndex].image!),
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
    ),
  );
  static BoxDecoration  containerStyle5 = BoxDecoration(
    color: AppliedJobsColors.color11,
    borderRadius: BorderRadius.circular(25.0.sp),
  );
  static BoxDecoration  containerStyle6 = BoxDecoration(
    color: AppliedJobsColors.color2,
    borderRadius: BorderRadius.circular(45.0.sp),
  );
  static BoxDecoration  containerStyle7 = BoxDecoration(
    borderRadius: BorderRadius.circular(45.0.sp),
    color: AppliedJobsColors.color12,
  );

  ///////////////////////////ButtonStyles/////////////////////////////////////////

  static ButtonStyle Function(BuildContext context ) buttonStyle1 = (context) => ButtonStyle(
    visualDensity: VisualDensity.comfortable,
    alignment: Alignment.center,
    padding: MaterialStatePropertyAll(EdgeInsets.all(5.0.sp)),
    fixedSize: MaterialStatePropertyAll(
      Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h),
    ),
  );
}
