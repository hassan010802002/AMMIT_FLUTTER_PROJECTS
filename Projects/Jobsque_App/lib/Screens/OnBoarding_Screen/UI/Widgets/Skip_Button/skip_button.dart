// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/Consts/OnBoardingConsts.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/Controller/on_boarding_cubit.dart';

class SkipButton extends StatefulWidget {
  final OnBoardingCubit cubit;
  const SkipButton({super.key, required this.cubit});

  @override
  _SkipButtonState createState() => _SkipButtonState();
}

class _SkipButtonState extends State<SkipButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        widget.cubit.SkippingButton(context);
      },
      child: Text(
        OnBoardingConsts.text3,
        softWrap: true,
        textAlign: TextAlign.justify,
        style: OnBoardingConsts.style2(context),
      ),
    );
  }
}
