// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CloseIcon extends StatefulWidget {
  const CloseIcon({super.key});

  @override
  _CloseIconState createState() => _CloseIconState();
}

class _CloseIconState extends State<CloseIcon> {
  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.circleXmark,
      color: const Color(0xffFF472B),
      size: 22.0.sp,
    );
  }
}
