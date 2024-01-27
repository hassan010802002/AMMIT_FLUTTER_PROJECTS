// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/Consts/OnBoardingConsts.dart';
import 'package:octo_image/octo_image.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  @override
  Widget build(BuildContext context) {
    return OctoImage(
      fit: BoxFit.fill,
      alignment: Alignment.center,
      image: const AssetImage(OnBoardingConsts.image1),
      filterQuality: FilterQuality.high,
      width: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 10.0.w,
    );
  }
}
