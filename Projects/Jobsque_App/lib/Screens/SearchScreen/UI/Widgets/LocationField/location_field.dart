// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Components/CustomTextField/CustomTextField.dart';
import '../../../Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';

class LocationField extends StatefulWidget {
  final FilterBottomSheetCubit bottomSheetCubit;

  const LocationField({super.key, required this.bottomSheetCubit});

  @override
  _LocationFieldState createState() => _LocationFieldState();
}

class _LocationFieldState extends State<LocationField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0.sp),
        borderSide: BorderSide(
          strokeAlign: BorderSide.strokeAlignInside,
          color: const Color(0xffD1D5DB),
          width: 1.5.w,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          strokeAlign: BorderSide.strokeAlignInside,
          color: const Color(0xffD1D5DB),
          width: 1.5.w,
        ),
        borderRadius: BorderRadius.circular(15.0.sp),
      ),
      keyboardType: TextInputType.name,
      prefixIcon: OctoImage(
        image: const AssetImage("Assets/Images/location.png"),
        alignment: Alignment.center,
        filterQuality: FilterQuality.high,
        color: const Color(0xff1F2937),
        fit: BoxFit.contain,
      ),
      textEditingController: widget.bottomSheetCubit.jobLocationController,
      fillColor: Colors.white,
    );
  }
}
