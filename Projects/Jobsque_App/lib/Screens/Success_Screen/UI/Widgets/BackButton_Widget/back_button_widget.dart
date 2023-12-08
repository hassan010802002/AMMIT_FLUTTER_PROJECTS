// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtonWidget extends StatefulWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  _BackButtonWidgetState createState() => _BackButtonWidgetState();
}

class _BackButtonWidgetState extends State<BackButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return BackButton(
      style: ButtonStyle(
        alignment: Alignment.centerLeft,
        visualDensity: VisualDensity.comfortable,
        iconSize: MaterialStatePropertyAll(30.0.sp),
      ),
      color: const Color(0xff292D32),
    );
  }
}
