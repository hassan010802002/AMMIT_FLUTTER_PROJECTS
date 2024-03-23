// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:octo_image/octo_image.dart';

class SuccessLogoWidget extends StatefulWidget {
  const SuccessLogoWidget({super.key});

  @override
  _SuccessLogoWidgetState createState() => _SuccessLogoWidgetState();
}

class _SuccessLogoWidgetState extends State<SuccessLogoWidget> {
  @override
  Widget build(BuildContext context) {
    return OctoImage(
      image: const AssetImage("Assets/Images/Success_Account_Ilustration.png"),
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
      alignment: Alignment.center,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.0.w,
      height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.0.h,
    );
  }
}
