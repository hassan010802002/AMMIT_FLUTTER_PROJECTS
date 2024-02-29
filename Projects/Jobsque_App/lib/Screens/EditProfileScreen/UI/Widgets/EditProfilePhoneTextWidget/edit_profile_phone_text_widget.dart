// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class EditProfilePhoneTextWidget extends StatefulWidget {
  const EditProfilePhoneTextWidget({super.key});

  @override
  _EditProfilePhoneTextWidgetState createState() => _EditProfilePhoneTextWidgetState();
}

class _EditProfilePhoneTextWidgetState extends State<EditProfilePhoneTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "No.Handphone",
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
        fontWeight: FontWeight.w600,
        color: const Color(0xff9CA3AF),
        fontFamily: TextFontFamily,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
