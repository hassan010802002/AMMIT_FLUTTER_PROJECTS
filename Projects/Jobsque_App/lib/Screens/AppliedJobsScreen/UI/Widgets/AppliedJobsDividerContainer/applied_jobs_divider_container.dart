// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class AppliedJobsDividerContainer extends StatefulWidget {
  const AppliedJobsDividerContainer({super.key});

  @override
  _AppliedJobsDividerContainerState createState() => _AppliedJobsDividerContainerState();
}

class _AppliedJobsDividerContainerState extends State<AppliedJobsDividerContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 20.0.h,
      alignment: Alignment.centerLeft,
      decoration: AppliedJobsConsts.containerStyle1,
      padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 20.0.w),
      child: Text(
        AppliedJobsConsts.text2,
        softWrap: true,
        textAlign: TextAlign.center,
        style: AppliedJobsConsts.textStyle2(context),
      ),
    );
  }
}
