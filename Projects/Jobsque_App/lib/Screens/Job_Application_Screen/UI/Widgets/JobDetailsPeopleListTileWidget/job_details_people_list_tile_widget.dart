// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/JobDetailsPeopleListHelper/JobDetailsPeopleListHelper.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobDetailsPeopleListTileWidget extends StatefulWidget {
  int? index;

  JobDetailsPeopleListTileWidget({super.key , required this.index});

  @override
  _JobDetailsPeopleListTileWidgetState createState() => _JobDetailsPeopleListTileWidgetState();
}

class _JobDetailsPeopleListTileWidgetState extends State<JobDetailsPeopleListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.comfortable,
      contentPadding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 10.0.w),
      title: Text(
        JobDetailsPeopleListHelper.getPersonName(widget.index!),
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
          color: const Color(0xff111827),
          fontFamily: TextFontFamily,
        ),
        textAlign: TextAlign.start,
        softWrap: true,
      ),
      leading: OctoImage(
        image: AssetImage(
          JobDetailsPeopleListHelper.getPersonProfile(widget.index!),
        ),
        height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 5.0.h,
        alignment: Alignment.centerLeft,
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 5.0.w,
        filterQuality: FilterQuality.high,
        fit: BoxFit.contain,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Work during',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
              color: const Color(0xff6B7280),
              fontFamily: TextFontFamily,
            ),
            textAlign: TextAlign.end,
            softWrap: true,
          ),
          Text(
            '5 Years',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
              color: const Color(0xff3366FF),
              fontFamily: TextFontFamily,
            ),
            textAlign: TextAlign.end,
            softWrap: true,
          ),
        ],
      ),
      subtitle: Text(
        JobDetailsPeopleListHelper.getPersonWork(widget.index!),
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
          color: const Color(0xff6B7280),
          fontFamily: TextFontFamily,
        ),
        textAlign: TextAlign.start,
        softWrap: true,
      ),
      style: ListTileStyle.list,
    );
  }
}
