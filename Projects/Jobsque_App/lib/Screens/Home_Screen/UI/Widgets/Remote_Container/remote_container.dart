// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class RemoteContainer extends StatefulWidget {
  final int? jobIndex;
  const RemoteContainer({super.key, required this.jobIndex});

  @override
  _RemoteContainerState createState() => _RemoteContainerState();
}

class _RemoteContainerState extends State<RemoteContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 12.0.h,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.2.w,
      decoration: BoxDecoration(
        color: (widget.jobIndex! % 2) == 0 ? Colors.white.withOpacity(0.14) : const Color(0xffD6E4FF),
        borderRadius: BorderRadius.circular(25.0.sp),
      ),
      child: Center(
        child: Text(
          "Remote",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: TextFontFamily,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
            color: (widget.jobIndex! % 2) == 0 ? Colors.white : const Color(0xff111827),
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
