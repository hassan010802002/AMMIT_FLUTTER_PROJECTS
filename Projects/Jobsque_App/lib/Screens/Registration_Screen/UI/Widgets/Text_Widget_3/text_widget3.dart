// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Controller/registration_cubit.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class TextWidget3 extends StatefulWidget {
  final RegistrationCubit cubit;

  const TextWidget3({Key? key, required this.cubit}) : super(key: key);

  @override
  _TextWidget3State createState() => _TextWidget3State();
}

class _TextWidget3State extends State<TextWidget3> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return Text(
          "Password must be at least 8 characters",
          style: TextStyle(
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
            fontWeight: FontWeight.w400,
            fontFamily: TextFontFamily,
            color: state is CorrectUserPasswordLength
                ? const Color(0xff60C631)
                : state is WrongUserPasswordLength
                    ? const Color(0xffFF472B)
                    : const Color(0xff9CA3AF),
          ),
          textAlign: TextAlign.justify,
          softWrap: true,
        );
      },
    );
  }
}
