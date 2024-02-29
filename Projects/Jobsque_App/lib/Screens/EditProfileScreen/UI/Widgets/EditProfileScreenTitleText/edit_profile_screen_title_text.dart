// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class EditProfileScreenTitleText extends StatefulWidget {
  const EditProfileScreenTitleText({super.key});

  @override
  _EditProfileScreenTitleTextState createState() => _EditProfileScreenTitleTextState();
}

class _EditProfileScreenTitleTextState extends State<EditProfileScreenTitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Edite Profile',
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.sp,
        fontWeight: FontWeight.w700,
      ),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}
