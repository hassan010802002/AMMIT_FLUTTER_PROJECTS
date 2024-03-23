// ignore_for_file: library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/Controller/log_in_cubit.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Components/CustomTextField/CustomTextField.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class Password_TextField_Widget extends StatefulWidget {
  final LogInCubit cubit;

  const Password_TextField_Widget({super.key, required this.cubit});

  @override
  _Password_TextField_WidgetState createState() => _Password_TextField_WidgetState();
}

class _Password_TextField_WidgetState extends State<Password_TextField_Widget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogInCubit, LogInState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return CustomTextField(
          textEditingController: widget.cubit.passwordController,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0.sp),
            borderSide: BorderSide(
              color: const Color(0xffD1D5DB),
              width: 1.5.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0.sp),
            borderSide: BorderSide(
              color: !widget.cubit.isCorrectPasswordLength ? const Color(0xffFF472B) : const Color(0xff3366FF),
              width: 1.5.w,
            ),
          ),
          hintStyle: TextStyle(
            color: const Color(0xff9CA3AF),
            fontFamily: TextFontFamily,
            fontWeight: FontWeight.w400,
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
          ),
          hintText: "Password",
          fillColor: Colors.white,
          keyboardType: TextInputType.text,
          opsecure: true,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: OctoImage(
              fit: BoxFit.contain,
              alignment: Alignment.center,
              image: const AssetImage("Assets/Images/lock.png"),
              filterQuality: FilterQuality.high,
              width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.w,
              height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.h,
            ),
          ),
          onChanged: (value) {
            widget.cubit.checkingUserEntrance();
            widget.cubit.checkingUserPasswordLength();
          },
        );
      },
    );
  }
}
