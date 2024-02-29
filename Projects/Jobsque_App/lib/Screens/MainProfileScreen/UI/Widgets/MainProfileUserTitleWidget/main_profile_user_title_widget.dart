// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/main_profile_controller_bloc.dart';

class MainProfileUserTitleWidget extends StatefulWidget {
  final MainProfileControllerBloc mainProfileControllerBloc;

  const MainProfileUserTitleWidget({super.key, required this.mainProfileControllerBloc});

  @override
  _MainProfileUserTitleWidgetState createState() => _MainProfileUserTitleWidgetState();
}

class _MainProfileUserTitleWidgetState extends State<MainProfileUserTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainProfileControllerBloc, MainProfileControllerState>(
      bloc: widget.mainProfileControllerBloc,
      builder: (context, state) {
        return widget.mainProfileControllerBloc.isSuccessProfile
            ? Text(
                widget.mainProfileControllerBloc.profileModel!.data!.name!,
                style: TextStyle(
                  color: const Color(0xff111827),
                  fontFamily: TextFontFamily,
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.sp,
                  fontWeight: FontWeight.w700,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              )
            : const SizedBox();
      },
    );
  }
}
