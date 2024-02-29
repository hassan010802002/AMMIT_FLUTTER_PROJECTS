// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class AddPortfolioTextWidget extends StatefulWidget {
  const AddPortfolioTextWidget({super.key});

  @override
  _AddPortfolioTextWidgetState createState() => _AddPortfolioTextWidgetState();
}

class _AddPortfolioTextWidgetState extends State<AddPortfolioTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Add portfolio here',
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 16.0.sp,
        fontWeight: FontWeight.w700,
      ),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}
