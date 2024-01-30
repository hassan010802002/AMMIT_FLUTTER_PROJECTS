// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsTitleWidget extends StatefulWidget {
  final DetailsCubit detailsCubitController;

  const JobDetailsTitleWidget({Key? key, required this.detailsCubitController}) : super(key: key);

  @override
  _JobDetailsTitleWidgetState createState() => _JobDetailsTitleWidgetState();
}

class _JobDetailsTitleWidgetState extends State<JobDetailsTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      bloc: widget.detailsCubitController,
      builder: (context, state) {
        return widget.detailsCubitController.isSuccessJobData
            ? Text(
                widget.detailsCubitController.currentJobDetailsData!.name!,
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  color: const Color(0xff111827),
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.sp,
                  fontFamily: TextFontFamily,
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox();
      },
    );
  }
}
