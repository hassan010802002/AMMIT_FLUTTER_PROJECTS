// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Location_Screen/UI/Widgets/OfficeWork_Widget/office_work_widget.dart';
import 'package:jobsque_app/Screens/Location_Screen/UI/Widgets/RemoteWork_Widget/remote_work_widget.dart';

import '../../../Controller/location_cubit.dart';

class JobTypeView extends StatefulWidget {
  final LocationCubit cubit;

  const JobTypeView({Key? key, required this.cubit}) : super(key: key);

  @override
  _JobTypeViewState createState() => _JobTypeViewState();
}

class _JobTypeViewState extends State<JobTypeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF4F4F5),
        borderRadius: BorderRadius.circular(30.0.sp),
      ),
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 18.0.h,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OfficeWorkWidget(cubit: widget.cubit),
          RemoteWorkWidget(cubit: widget.cubit),
        ],
      ),
    );
  }
}
