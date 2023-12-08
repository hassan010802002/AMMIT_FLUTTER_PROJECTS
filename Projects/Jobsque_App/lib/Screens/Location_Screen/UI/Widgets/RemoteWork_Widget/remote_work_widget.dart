// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Location_Screen/Controller/location_cubit.dart';

import '../../../../../Config/AppConfig.dart';

class RemoteWorkWidget extends StatefulWidget {
  final LocationCubit cubit;

  const RemoteWorkWidget({Key? key, required this.cubit}) : super(key: key);

  @override
  _RemoteWorkWidgetState createState() => _RemoteWorkWidgetState();
}

class _RemoteWorkWidgetState extends State<RemoteWorkWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          widget.cubit.changeSelectedWorkType(1);
        },
        child: BlocBuilder<LocationCubit, LocationState>(
          bloc: widget.cubit,
          builder: (context, state) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0.sp),
                color: widget.cubit.currentSelectedIndex == 1 ? const Color(0xff091A7A) : const Color(0xffF4F4F5),
              ),
              padding: EdgeInsets.all(15.0.sp),
              child: Text(
                'Remote Work',
                textAlign: TextAlign.justify,
                softWrap: true,
                style: TextStyle(
                  color: widget.cubit.currentSelectedIndex == 1 ? Colors.white : const Color(0xff6B7280),
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/28.0.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: TextFontFamily,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
