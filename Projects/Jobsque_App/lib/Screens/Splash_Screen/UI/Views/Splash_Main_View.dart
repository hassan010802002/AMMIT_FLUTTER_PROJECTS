// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/Splash_Screen/UI/Widgets/Blur_Image/blur__image__widget.dart';
import 'package:jobsque_app/Screens/Splash_Screen/UI/Widgets/Logo/logo__widget.dart';

import '../../Controller/splash_controller_cubit.dart';

class Splash_Main_View extends StatefulWidget {
  SplashControllerCubit cubit;

  Splash_Main_View({super.key, required this.cubit});

  @override
  State<Splash_Main_View> createState() => _Splash_Main_ViewState();
}

class _Splash_Main_ViewState extends State<Splash_Main_View> {
  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.passthrough,
        children: [
          BlurImageWidget(),
          LogoWidget(),
        ],
      ),
    );
  }
}
