// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class TermsConditionsContentTextContainer extends StatefulWidget {
  const TermsConditionsContentTextContainer({super.key});

  @override
  _TermsConditionsContentTextContainerState createState() => _TermsConditionsContentTextContainerState();
}

class _TermsConditionsContentTextContainerState extends State<TermsConditionsContentTextContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0.w,
        vertical: 8.0.h,
      ),
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(color: Color(0xffF4F4F5)),
      child: Text(
        'Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. '
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. '
            'Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
        style: TextStyle(
          color: const Color(0xff6B7280),
          fontFamily: TextFontFamily,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
          fontWeight: FontWeight.w600,
        ),
        softWrap: true,
        textAlign: TextAlign.start,
      ),
    );
  }
}
