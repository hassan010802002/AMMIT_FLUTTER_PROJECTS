// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/edit_profile_controller_bloc.dart';

class EditProfilePhoneFieldWidget extends StatefulWidget {
  final EditProfileControllerBloc editProfileControllerBloc;

  const EditProfilePhoneFieldWidget({super.key, required this.editProfileControllerBloc});

  @override
  _EditProfilePhoneFieldWidgetState createState() => _EditProfilePhoneFieldWidgetState();
}

class _EditProfilePhoneFieldWidgetState extends State<EditProfilePhoneFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      style: TextStyle(
        color: const Color(0xff000E08),
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontWeight: FontWeight.w600,
        fontFamily: TextFontFamily,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(
          vertical: 8.0.h,
          horizontal: 12.0.w,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0.sp),
          borderSide: BorderSide(
            color: const Color(0xffD1D5DB),
            strokeAlign: BorderSide.strokeAlignOutside,
            width: 1.5.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0.sp),
          borderSide: BorderSide(
            color: const Color(0xffD1D5DB),
            strokeAlign: BorderSide.strokeAlignOutside,
            width: 1.5.w,
          ),
        ),
        enabled: true,
        constraints: BoxConstraints.expand(
          width: MediaQuery_Size_Helper.MAX_WIDTH(context)!.w,
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 12.0.h,
        ),
      ),
      enabled: true,
      keyboardType: TextInputType.phone,
      textAlign: TextAlign.start,
      controller: widget.editProfileControllerBloc.phoneEditingController!,
      dropdownTextStyle: TextStyle(
        color: const Color(0xff111827),
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/20.0.sp,
        fontFamily: TextFontFamily,
      ),
      pickerDialogStyle: PickerDialogStyle(
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)!.w,
        padding: EdgeInsets.symmetric(horizontal: 10.0.w , vertical: 8.0.h),
        backgroundColor: Colors.white,
        listTilePadding: EdgeInsets.symmetric(horizontal: 10.0.w , vertical: 8.0.h),
        countryCodeStyle: TextStyle(
          color: const Color(0xff111827),
          fontWeight: FontWeight.w600,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/28.0.sp,
          fontFamily: TextFontFamily,
        ),
        countryNameStyle: TextStyle(
          color: const Color(0xff111827),
          fontWeight: FontWeight.w600,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/24.0.sp,
          fontFamily: TextFontFamily,
        ),
        searchFieldPadding: EdgeInsets.symmetric(horizontal: 15.0.w , vertical: 10.0.h),
      ),
      showDropdownIcon: true,
      showCountryFlag: true,
      flagsButtonPadding: EdgeInsets.all(8.0.sp),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0.sp),
        color: Colors.white,
        backgroundBlendMode: BlendMode.colorBurn,
      ),
    );
  }
}
