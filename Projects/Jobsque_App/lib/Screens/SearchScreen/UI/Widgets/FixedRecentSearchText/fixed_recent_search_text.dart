// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/FixedSearchViewHelper/FixedSearchViewHelper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class FixedRecentSearchText extends StatefulWidget {
  final int? textIndex;
  const FixedRecentSearchText({super.key, required this.textIndex});

  @override
  _FixedRecentSearchTextState createState() => _FixedRecentSearchTextState();
}

class _FixedRecentSearchTextState extends State<FixedRecentSearchText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      FixedSearchViewHelper.titles(widget.textIndex!),
      textAlign: TextAlign.start,
      softWrap: true,
      style: TextStyle(
        color: const Color(0xff111827),
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.5.sp,
        fontFamily: TextFontFamily,
      ),
    );
  }
}
