// ignore_for_file: file_names

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/Colors/AppliedJobsColors.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/Styles/AppliedJobsStyles.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/Texts/AppliedJobsTexts.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsEasyStepperContainerWidget/applied_jobs_easy_stepper_container_widget.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsImageWidget/applied_jobs_image_widget.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Widgets/AppliedJobsTitleWidget/applied_jobs_title_widget.dart';

class AppliedJobsConsts{

  /////////////////////////////////Texts///////////////////////////////////

  static const String text1 = AppliedJobsTexts.text1;
  static const String text2 = AppliedJobsTexts.text2;
  static const String text3 = AppliedJobsTexts.text3;
  static const String text4 = AppliedJobsTexts.text4;
  static const String text5 = AppliedJobsTexts.text5;
  static const String text6 = AppliedJobsTexts.text6;
  static const String text7 = AppliedJobsTexts.text7;

  ////////////////////////////////Styles///////////////////////////////////

  static TextStyle Function(BuildContext context) textStyle1 = AppliedJobsStyles.textStyle1;
  static TextStyle Function(BuildContext context) textStyle2 = AppliedJobsStyles.textStyle2;
  static TextStyle Function(BuildContext context, AppliedJobsEasyStepperContainerWidget widget, int? index) textStyle3 = AppliedJobsStyles.textStyle3;
  static TextStyle Function(BuildContext context, AppliedJobsEasyStepperContainerWidget widget, int? index) textStyle4 = AppliedJobsStyles.textStyle4;
  static TextStyle Function(BuildContext context) textStyle5 = AppliedJobsStyles.textStyle5;
  static TextStyle Function(BuildContext context) textStyle6 = AppliedJobsStyles.textStyle6;
  static TextStyle Function(BuildContext context) textStyle7 = AppliedJobsStyles.textStyle7;
  static TextStyle Function(BuildContext context, AppliedJobsTitleWidget widget) textStyle8 = AppliedJobsStyles.textStyle8;
  static TextStyle Function(BuildContext context) textStyle9 = AppliedJobsStyles.textStyle9;
  static TextStyle Function(BuildContext context) textStyle10 = AppliedJobsStyles.textStyle10;
  static TextStyle Function(BuildContext context) textStyle11 = AppliedJobsStyles.textStyle11;
  static TextStyle Function(BuildContext context) textStyle12 = AppliedJobsStyles.textStyle12;

  static final BoxDecoration containerStyle1 = AppliedJobsStyles.containerStyle1;
  static final BoxDecoration containerStyle2 = AppliedJobsStyles.containerStyle2;
  static final BoxDecoration Function(AppliedJobsEasyStepperContainerWidget widget, int? index) containerStyle3 = AppliedJobsStyles.containerStyle3;
  static final BoxDecoration Function(AppliedJobsImageWidget widget) containerStyle4 = AppliedJobsStyles.containerStyle4;
  static final BoxDecoration containerStyle5 = AppliedJobsStyles.containerStyle5;
  static final BoxDecoration containerStyle6 = AppliedJobsStyles.containerStyle6;
  static final BoxDecoration containerStyle7 = AppliedJobsStyles.containerStyle7;
  static final LineStyle stepperStyle1 = AppliedJobsStyles.stepperStyle1;

  static final ButtonStyle Function(BuildContext context) buttonStyle1 = AppliedJobsStyles.buttonStyle1;

  ///////////////////////////////Images////////////////////////////////////

  static const String image1 = AppliedJobsTexts.image1;
  static const String image2 = AppliedJobsTexts.image2;
  static const String image3 = AppliedJobsTexts.image3;

  //////////////////////////////Colors/////////////////////////////////////

  static const color3 = AppliedJobsColors.color3;
  static const color4 = AppliedJobsColors.color4;
  static const color5 = AppliedJobsColors.color5;
  static const color6 = AppliedJobsColors.color6;
  static const color7 = AppliedJobsColors.color7;
  static const color8 = AppliedJobsColors.color8;
  static const color9 = AppliedJobsColors.color9;
  static const color10 = AppliedJobsColors.color10;
}