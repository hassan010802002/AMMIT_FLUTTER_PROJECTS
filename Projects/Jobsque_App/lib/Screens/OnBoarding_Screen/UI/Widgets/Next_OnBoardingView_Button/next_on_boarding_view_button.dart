// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

import '../../../../../Components/Custom_Button/Custom_Button.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/on_boarding_cubit.dart';

class NextOnBoardingViewButton extends StatefulWidget {
  OnBoardingCubit cubit;

  NextOnBoardingViewButton({Key? key, required this.cubit}) : super(key: key);

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
          buttonText: widget.cubit.viewIndex < 2 ? "Next" : "Get Started",
          backgroundColor: const MaterialStatePropertyAll(Color(0xff3366FF)),
          fixedSize:
          MaterialStatePropertyAll(Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h)),
          style: TextStyle(
            color: Colors.white,
            fontFamily: TextFontFamily,
            fontWeight: FontWeight.w500,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.w,
          ),
          onPressed: () {
            widget.cubit.ChangeOnBoardingView();
            if (widget.cubit.viewIndex == 2) {
              NavigatorHelper(context, AppRoutes.registrationScreen);
            }  
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
