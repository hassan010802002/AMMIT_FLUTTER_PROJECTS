// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';
import 'package:octo_image/octo_image.dart';

class AppliedJobsEmptyImageWidget extends StatefulWidget {
  const AppliedJobsEmptyImageWidget({super.key});

  @override
  _AppliedJobsEmptyImageWidgetState createState() => _AppliedJobsEmptyImageWidgetState();
}

class _AppliedJobsEmptyImageWidgetState extends State<AppliedJobsEmptyImageWidget> {
  @override
  Widget build(BuildContext context) {
    return OctoImage(
      image: const AssetImage(AppliedJobsConsts.image3),
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
      alignment: Alignment.center,
      height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.5.h,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.5.w,
    );
  }
}
