// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/Consts/OnBoardingConsts.dart';

import '../../../../../Components/Custom_Button/Custom_Button.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/on_boarding_cubit.dart';

class NextOnBoardingViewButton extends StatefulWidget {
  OnBoardingCubit cubit;

  NextOnBoardingViewButton({super.key, required this.cubit});

  @override
  _NextOnBoardingViewButtonState createState() => _NextOnBoardingViewButtonState();
}

class _NextOnBoardingViewButtonState extends State<NextOnBoardingViewButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return CustomButton(
          buttonText: widget.cubit.viewIndex < 2 ? OnBoardingConsts.text1 : OnBoardingConsts.text2,
          backgroundColor: const MaterialStatePropertyAll(OnBoardingConsts.color1),
          fixedSize: MaterialStatePropertyAll(Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h)),
          style: OnBoardingConsts.style1(context),
          onPressed: () {
            widget.cubit.ChangeOnBoardingView(context);
          },
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0.sp),
            ),
          ),
        );
      },
    );
  }
}
