// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class SheetTitle extends StatefulWidget {
  const SheetTitle({super.key});

  @override
  _SheetTitleState createState() => _SheetTitleState();
}

class _SheetTitleState extends State<SheetTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Set Filter',
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
