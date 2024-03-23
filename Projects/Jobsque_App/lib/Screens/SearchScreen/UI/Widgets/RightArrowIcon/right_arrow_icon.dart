// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RightArrowIcon extends StatefulWidget {
  const RightArrowIcon({super.key});

  @override
  _RightArrowIconState createState() => _RightArrowIconState();
}

class _RightArrowIconState extends State<RightArrowIcon> {
  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.circleRight,
      size: 24.0.sp,
      color: const Color(0xff3366FF),
    );
  }
}
