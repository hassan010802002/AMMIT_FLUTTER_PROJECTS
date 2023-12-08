// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Success_Screen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import 'package:jobsque_app/Screens/Success_Screen/UI/Widgets/StartingButton_Widget/starting_button_widget.dart';
import 'package:jobsque_app/Screens/Success_Screen/UI/Widgets/SuccessLogo_Widget/success_logo_widget.dart';
import 'package:jobsque_app/Screens/Success_Screen/UI/Widgets/Text1_Widget/text1_widget.dart';
import 'package:jobsque_app/Screens/Success_Screen/UI/Widgets/Text2_Widget/text2_widget.dart';

import '../../Controller/success_cubit.dart';

class Success_MainView extends StatefulWidget {
  final SuccessCubit cubit;

  const Success_MainView({super.key, required this.cubit});

  @override
  State<Success_MainView> createState() => _Success_MainViewState();
}

class _Success_MainViewState extends State<Success_MainView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0.w, left: 15.0.w, top: 20.0.h),
      child: Align(
        alignment: Alignment.center,
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.start,
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Row(
              children: [BackButtonWidget()],
            ),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 8.0.h,
            ),
            const SuccessLogoWidget(),
            SizedBox(
              height: 20.0.h,
            ),
            const Text1Widget(),
            SizedBox(
              height: 10.0.h,
            ),
            const Text2Widget(),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 3.3.h,
            ),
            const StartingButtonWidget(),
          ],
        ),
      ),
    );
  }
}
