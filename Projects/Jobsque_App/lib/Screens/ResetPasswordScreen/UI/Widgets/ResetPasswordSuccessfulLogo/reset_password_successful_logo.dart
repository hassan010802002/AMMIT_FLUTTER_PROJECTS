// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordSuccessfulLogo extends StatefulWidget {
  const ResetPasswordSuccessfulLogo({super.key});

  @override
  _ResetPasswordSuccessfulLogoState createState() => _ResetPasswordSuccessfulLogoState();
}

class _ResetPasswordSuccessfulLogoState extends State<ResetPasswordSuccessfulLogo> {
  @override
  Widget build(BuildContext context) {
    return OctoImage(
      image: const AssetImage("Assets/Images/Password_Succesfully_Ilustration.png"),
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
      alignment: Alignment.center,
      height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.2.h,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.2.w,
    );
  }
}
