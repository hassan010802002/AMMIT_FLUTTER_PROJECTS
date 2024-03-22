// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/OnBoarding_Helper/OnBoarding_Helper.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/Controller/on_boarding_cubit.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingCubit cubit;
  OnBoardingView({required this.cubit, super.key});

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return PageView.builder(
          allowImplicitScrolling: true,
          controller: PageController(),
          itemCount: 3,
          padEnds: true,
          pageSnapping: true,
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OnBoardingHelper.Images(context).elementAt(widget.cubit.viewIndex),
                SizedBox(
                  height: 20.0.h,
                ),
                OnBoardingHelper.TitlesText(context).elementAt(widget.cubit.viewIndex),
                SizedBox(
                  height: 20.0.h,
                ),
                OnBoardingHelper.SubTitlesText(context).elementAt(widget.cubit.viewIndex),
                SizedBox(
                  height: 50.0.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: OnBoardingHelper.PageViewSlider(context, widget.cubit.viewIndex),
                ),
              ],
            );
          },
          onPageChanged: (value) {
            widget.cubit.ChangeOnBoardingView(context);
          },
        );
      },
    );
  }
}
