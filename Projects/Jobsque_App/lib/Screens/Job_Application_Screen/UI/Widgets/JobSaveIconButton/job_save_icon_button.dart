// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobSaveIconButton extends StatefulWidget {
  final DetailsCubit detailsCubitController;

  const JobSaveIconButton({Key? key, required this.detailsCubitController}) : super(key: key);

  @override
  _JobSaveIconButtonState createState() => _JobSaveIconButtonState();
}

class _JobSaveIconButtonState extends State<JobSaveIconButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      bloc: widget.detailsCubitController,
      builder: (context, state) {
        return IconButton(
          icon: OctoImage(
            image: widget.detailsCubitController.isJobSaved
                ? const AssetImage("Assets/Images/archive-minus2.png")
                : const AssetImage("Assets/Images/archive-minus.png"),
            filterQuality: FilterQuality.high,
            fit: BoxFit.contain,
            width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.w,
            height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.h,
            alignment: Alignment.center,
            color: const Color(0xff111827),
          ),
          onPressed: () {
            widget.detailsCubitController.ChangingJobSaveStatus();
          },
          style: ButtonStyle(
            visualDensity: VisualDensity.comfortable,
            alignment: Alignment.center,
            padding: MaterialStatePropertyAll(EdgeInsets.all(5.0.sp)),
            fixedSize: MaterialStatePropertyAll(
              Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.h),
            ),
          ),
        );
      },
    );
  }
}
