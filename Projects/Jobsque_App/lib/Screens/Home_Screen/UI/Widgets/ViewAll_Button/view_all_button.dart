// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ViewAllButton extends StatefulWidget {
  const ViewAllButton({Key? key}) : super(key: key);

  @override
  _ViewAllButtonState createState() => _ViewAllButtonState();
}

class _ViewAllButtonState extends State<ViewAllButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        visualDensity: VisualDensity.comfortable,
        fixedSize: MaterialStatePropertyAll(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 5.0.w, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 25.0.h),
        ),
        padding: MaterialStatePropertyAll(EdgeInsets.all(8.0.sp)),
        alignment: Alignment.center,
      ),
      child: Text(
        "View all",
        softWrap: true,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: TextFontFamily,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
          color: const Color(0xff3366FF),
        ),
      ),
    );
  }
}
