// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Components/CustomTextField/CustomTextField.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityEmailAddressTextField extends StatefulWidget {
  const ProfileSecurityEmailAddressTextField({super.key});

  @override
  _ProfileSecurityEmailAddressTextFieldState createState() => _ProfileSecurityEmailAddressTextFieldState();
}

class _ProfileSecurityEmailAddressTextFieldState extends State<ProfileSecurityEmailAddressTextField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      fillColor: Colors.white,
      textEditingController: TextEditingController(),
      prefixIcon: OctoImage(
        image: const AssetImage("Assets/Images/sms.png"),
        height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.h,
        alignment: Alignment.center,
        color: const Color(0xff9CA3AF),
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.w,
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1.5,
          strokeAlign: BorderSide.strokeAlignOutside,
          color: Color(0xffD1D5DB),
        ),
        borderRadius: BorderRadius.circular(15.0.sp),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1.5,
          strokeAlign: BorderSide.strokeAlignOutside,
          color: Color(0xffD1D5DB),
        ),
        borderRadius: BorderRadius.circular(15.0.sp),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}