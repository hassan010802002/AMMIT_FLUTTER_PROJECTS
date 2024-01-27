// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Components/CustomTextField/CustomTextField.dart';
import '../../../Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';

class JobTitleField extends StatefulWidget {
  final FilterBottomSheetCubit bottomSheetCubit;

  const JobTitleField({Key? key , required this.bottomSheetCubit}) : super(key: key);

  @override
  _JobTitleFieldState createState() => _JobTitleFieldState();
}

class _JobTitleFieldState extends State<JobTitleField> {
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
        image: const AssetImage("Assets/Images/briefcase.png"),
        alignment: Alignment.center,
        filterQuality: FilterQuality.high,
        color: const Color(0xff1F2937),
        fit: BoxFit.contain,
      ),
      textEditingController: widget.bottomSheetCubit.jobTitleController,
      fillColor: Colors.white,
    );
  }
}
