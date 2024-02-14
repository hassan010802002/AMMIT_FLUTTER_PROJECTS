// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class EmptyMessagesView extends StatefulWidget {
  const EmptyMessagesView({super.key});

  @override
  _EmptyMessagesViewState createState() => _EmptyMessagesViewState();
}

class _EmptyMessagesViewState extends State<EmptyMessagesView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OctoImage(
          image: const AssetImage("Assets/Images/Data Ilustration2.png"),
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
          alignment: Alignment.center,
          height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.2.h,
          width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.2.w,
        ),
        Text(
          'You have not received any messages',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xff111827),
            fontFamily: TextFontFamily,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 16.0.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 10.0.h,
        ),
        Text(
          'Once your application has reached the interview\nstage, you will get a message from the recruiter.',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xff6B7280),
            fontFamily: TextFontFamily,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
