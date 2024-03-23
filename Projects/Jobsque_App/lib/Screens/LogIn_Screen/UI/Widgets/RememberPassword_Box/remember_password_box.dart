// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Controller/log_in_cubit.dart';

class RememberPasswordBox extends StatefulWidget {
  final LogInCubit cubit;

  const RememberPasswordBox({super.key, required this.cubit});

  @override
  _RememberPasswordBoxState createState() => _RememberPasswordBoxState();
}

class _RememberPasswordBoxState extends State<RememberPasswordBox> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogInCubit, LogInState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return Checkbox(
          value: widget.cubit.isBoxChecked,
          onChanged: (value) {
            widget.cubit.changingBoxStatus(value!);
          },
          activeColor: const Color(0xff3366FF),
          visualDensity: VisualDensity.comfortable,
          splashRadius: 20.0.sp,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0.sp),
              side: BorderSide(
                color: const Color(0xff9CA3AF),
                width: 1.5.w,
              )),
        );
      },
    );
  }
}
