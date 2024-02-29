// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class MainProfileAboutEditRow extends StatefulWidget {
  const MainProfileAboutEditRow({super.key});

  @override
  _MainProfileAboutEditRowState createState() => _MainProfileAboutEditRowState();
}

class _MainProfileAboutEditRowState extends State<MainProfileAboutEditRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "About",
          style: TextStyle(
            color: const Color(0xff6B7280),
            fontFamily: TextFontFamily,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
            fontWeight: FontWeight.w600,
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        TextButton(
          style: ButtonStyle(
            alignment: Alignment.center,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 8.0.h)),
            fixedSize: MaterialStatePropertyAll(Size(
              MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.w,
              MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.h,
            )),
          ),
          onPressed: () {},
          child: Text(
            'Edit',
            style: TextStyle(
              color: const Color(0xff3366FF),
              fontFamily: TextFontFamily,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
              fontWeight: FontWeight.w600,
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
