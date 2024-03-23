// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/Custom_Button/Custom_Button.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/Controller/log_in_cubit.dart';

import '../../../../../Config/AppConfig.dart';

class LogInButton extends StatefulWidget {
  final LogInCubit cubit;

  const LogInButton({required this.cubit, super.key});

  @override
  _LogInButtonState createState() => _LogInButtonState();
}

class _LogInButtonState extends State<LogInButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogInCubit, LogInState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return CustomButton(
          style: TextStyle(
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
            fontWeight: FontWeight.w500,
            fontFamily: TextFontFamily,
            color: widget.cubit.isUserEntranceState || widget.cubit.isCorrectPasswordLength ? Colors.white : const Color(0xff6B7280),
          ),
          buttonText: "Login",
          onPressed: () {
            widget.cubit.LogIn(context);
          },
          backgroundColor: widget.cubit.isUserEntranceState || widget.cubit.isCorrectPasswordLength
              ? const MaterialStatePropertyAll(Color(0xff3366FF))
              : const MaterialStatePropertyAll(Color(0xffD1D5DB)),
          fixedSize: MaterialStatePropertyAll(
            Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h),
          ),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0.sp))),
        );
      },
    );
  }
}
