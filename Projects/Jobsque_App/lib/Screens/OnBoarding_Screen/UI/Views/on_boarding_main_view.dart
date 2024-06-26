// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/Controller/on_boarding_cubit.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/UI/Widgets/Logo_Widget/logo_widget.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/UI/Widgets/Next_OnBoardingView_Button/next_on_boarding_view_button.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/UI/Widgets/Skip_Button/skip_button.dart';

import 'OnBoarding_View/on_boarding_view.dart';

class OnBoardingMainView extends StatefulWidget {
  final OnBoardingCubit cubit;

  const OnBoardingMainView({required this.cubit, super.key});

  @override
  _OnBoardingMainViewState createState() => _OnBoardingMainViewState();
}

class _OnBoardingMainViewState extends State<OnBoardingMainView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.passthrough,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: OnBoardingView(cubit: widget.cubit),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 35.0.h, horizontal: 15.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const LogoWidget(),
              SkipButton(cubit: widget.cubit),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 35.0.h),
            child: NextOnBoardingViewButton(cubit: widget.cubit),
          ),
        )
      ],
    );
  }
}
