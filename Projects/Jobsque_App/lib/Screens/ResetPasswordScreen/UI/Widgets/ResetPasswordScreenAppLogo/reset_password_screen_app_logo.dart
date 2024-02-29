// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordScreenAppLogo extends StatefulWidget {
  const ResetPasswordScreenAppLogo({super.key});

  @override
  _ResetPasswordScreenAppLogoState createState() => _ResetPasswordScreenAppLogoState();
}

class _ResetPasswordScreenAppLogoState extends State<ResetPasswordScreenAppLogo> {
  @override
  Widget build(BuildContext context) {
    return OctoImage(
      fit: BoxFit.contain,
      alignment: Alignment.center,
      image: const AssetImage("Assets/Images/Logo.png"),
      filterQuality: FilterQuality.high,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.0.w,
    );
  }
}
