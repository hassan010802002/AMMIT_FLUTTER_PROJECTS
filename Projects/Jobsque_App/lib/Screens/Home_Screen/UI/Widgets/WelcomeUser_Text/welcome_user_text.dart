// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Home_Screen/Controller/home_bloc.dart';

class WelcomeUserText extends StatefulWidget {
  final HomeBloc controller;

  const WelcomeUserText({Key? key, required this.controller}) : super(key: key);

  @override
  _WelcomeUserTextState createState() => _WelcomeUserTextState();
}

class _WelcomeUserTextState extends State<WelcomeUserText> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: widget.controller,
      builder: (context, state) {
        return Text(
          widget.controller.isSuccessProfileData? "Hi, ${widget.controller.profileModel!.data!.name}": "Hi, There",
          softWrap: true,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: const Color(0xff111827),
            fontFamily: TextFontFamily,
            fontWeight: FontWeight.w600,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/15.0.sp,
          ),
        );
      },
    );
  }
}
