// ignore_for_file: camel_case_types, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/TermsConditionsScreen/UI/Widgets/TermsConditionsContentText1/terms_conditions_content_text1.dart';
import 'package:jobsque_app/Screens/TermsConditionsScreen/UI/Widgets/TermsConditionsContentText2/terms_conditions_content_text2.dart';
import 'package:jobsque_app/Screens/TermsConditionsScreen/UI/Widgets/TermsConditionsContentText3/terms_conditions_content_text3.dart';
import 'package:jobsque_app/Screens/TermsConditionsScreen/UI/Widgets/TermsConditionsContentTextContainer/terms_conditions_content_text_container.dart';
import 'package:jobsque_app/Screens/TermsConditionsScreen/UI/Widgets/TermsConditionsHeaderText/terms_conditions_header_text.dart';
import 'package:jobsque_app/Screens/TermsConditionsScreen/UI/Widgets/TermsConditionsTitleTextWidget/terms_conditions_title_text_widget.dart';

import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Controller/terms_conditions_controller_cubit.dart';

class TermsConditionsMainView extends StatefulWidget {
  final TermsConditionsControllerCubit termsConditionsControllerCubit;

  const TermsConditionsMainView({super.key, required this.termsConditionsControllerCubit});

  @override
  State<TermsConditionsMainView> createState() => _TermsConditionsMainViewState();
}

class _TermsConditionsMainViewState extends State<TermsConditionsMainView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButtonWidget(),
                const TermsConditionsTitleTextWidget(),
                const SizedBox(),
              ],
            ),
            SizedBox(
              height: 30.0.h,
            ),
            const TermsConditionsHeaderText(),
            SizedBox(
              height: 15.0.h,
            ),
            const TermsConditionsContentText1(),
            SizedBox(
              height: 20.0.h,
            ),
            const TermsConditionsHeaderText(),
            SizedBox(
              height: 15.0.h,
            ),
            const TermsConditionsContentText2(),
            SizedBox(
              height: 15.0.h,
            ),
            const TermsConditionsContentTextContainer(),
            SizedBox(
              height: 15.0.h,
            ),
            const TermsConditionsContentText3(),
          ],
        ),
      ),
    );
  }
}
