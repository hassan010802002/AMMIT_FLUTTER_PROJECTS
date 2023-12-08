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
      onPressed: () {},
      color: Colors.black,
      style: ButtonStyle(
        alignment: Alignment.center,
        visualDensity: VisualDensity.comfortable,
        padding: MaterialStatePropertyAll(EdgeInsets.all(10.0.sp)),
        iconSize: MaterialStatePropertyAll(35.0.sp),
      ),
    );
  }
}
