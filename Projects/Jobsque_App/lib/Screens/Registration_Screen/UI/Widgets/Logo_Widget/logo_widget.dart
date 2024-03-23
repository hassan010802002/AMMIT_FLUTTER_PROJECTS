// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({super.key});

  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0.w),
      child: OctoImage(
        fit: BoxFit.contain,
        alignment: Alignment.center,
        image: const AssetImage(RegistrationConsts.image4),
        filterQuality: FilterQuality.high,
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.0.w,
      ),
    );
  }
}
