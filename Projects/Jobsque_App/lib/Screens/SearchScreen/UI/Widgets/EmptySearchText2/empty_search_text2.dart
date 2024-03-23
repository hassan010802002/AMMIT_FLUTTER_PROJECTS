// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class EmptySearchText2 extends StatefulWidget {
  const EmptySearchText2({super.key});

  @override
  _EmptySearchText2State createState() => _EmptySearchText2State();
}

class _EmptySearchText2State extends State<EmptySearchText2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Try searching with different keywords so we can show you',
      style: TextStyle(
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
        fontWeight: FontWeight.w600,
        color: const Color(0xff6B7280),
      ),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}
