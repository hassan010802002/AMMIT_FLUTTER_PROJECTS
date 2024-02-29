// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/PrivacyPolicyScreen/UI/Widgets/PrivacyPolicyContentText1/privacy_policy_content_text1.dart';
import 'package:jobsque_app/Screens/PrivacyPolicyScreen/UI/Widgets/PrivacyPolicyContentText2/privacy_policy_content_text2.dart';
import 'package:jobsque_app/Screens/PrivacyPolicyScreen/UI/Widgets/PrivacyPolicyHeaderText1/privacy_policy_header_text1.dart';
import 'package:jobsque_app/Screens/PrivacyPolicyScreen/UI/Widgets/PrivacyPolicyHeaderText2/privacy_policy_header_text2.dart';
import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Controller/privacy_policy_controller_cubit.dart';
import '../Widgets/PrivacyPolicyTitleTextWidget/privacy_policy_title_text_widget.dart';

class PrivacyPolicyMainView extends StatefulWidget {
  final PrivacyPolicyControllerCubit privacyPolicyControllerCubit;

  const PrivacyPolicyMainView({super.key, required this.privacyPolicyControllerCubit});

  @override
  State<PrivacyPolicyMainView> createState() => _PrivacyPolicyMainViewState();
}

class _PrivacyPolicyMainViewState extends State<PrivacyPolicyMainView> {
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
                const PrivacyPolicyTitleTextWidget(),
                const SizedBox(),
              ],
            ),
            SizedBox(
              height: 30.0.h,
            ),
            const PrivacyPolicyHeaderText1(),
            SizedBox(
              height: 15.0.h,
            ),
            const PrivacyPolicyContentText1(),
            SizedBox(
              height: 15.0.h,
            ),
            const PrivacyPolicyContentText2(),
            SizedBox(
              height: 25.0.h,
            ),
            const PrivacyPolicyHeaderText2(),
            SizedBox(
              height: 15.0.h,
            ),
            const PrivacyPolicyContentText1(),
          ],
        ),
      ),
    );
  }
}
