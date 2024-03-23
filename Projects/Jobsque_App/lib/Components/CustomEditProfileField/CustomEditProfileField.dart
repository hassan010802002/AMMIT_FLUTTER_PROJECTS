// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Config/AppConfig.dart';
import '../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../CustomTextField/CustomTextField.dart';

class CustomEditProfileField extends StatelessWidget {
  final String fieldTitleText;
  final TextEditingController textEditingController;

  const CustomEditProfileField(
    this.fieldTitleText, {
    super.key,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitleText,
          style: TextStyle(
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xff9CA3AF),
            fontFamily: TextFontFamily,
          ),
          softWrap: true,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 8.0.h,
        ),
        CustomTextField(
          fillColor: Colors.white,
          textEditingController: textEditingController,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.5,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Color(0xffD1D5DB),
            ),
            borderRadius: BorderRadius.circular(12.0.sp),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.5,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Color(0xffD1D5DB),
            ),
            borderRadius: BorderRadius.circular(12.0.sp),
          ),
          keyboardType: TextInputType.name,
        ),
      ],
    );
  }
}
