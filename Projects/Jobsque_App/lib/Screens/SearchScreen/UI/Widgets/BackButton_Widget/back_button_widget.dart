// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class BackButtonWidget extends StatefulWidget {
  void Function()? onPressed;

  BackButtonWidget({super.key, this.onPressed});

  @override
  _BackButtonWidgetState createState() => _BackButtonWidgetState();
}

class _BackButtonWidgetState extends State<BackButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return BackButton(
      color: const Color(0xff292D32),
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.w, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 20.0.h),
        ),
        visualDensity: VisualDensity.comfortable,
        alignment: Alignment.centerLeft,
        padding: MaterialStatePropertyAll(EdgeInsets.all(0.0.sp)),
        iconSize: MaterialStatePropertyAll(28.0.sp),
      ),
      onPressed: widget.onPressed ??
          () {
            Navigator.pop(context);
          },
    );
  }
}
