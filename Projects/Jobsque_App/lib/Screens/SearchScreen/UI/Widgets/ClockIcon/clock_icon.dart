// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClockIcon extends StatefulWidget {
  const ClockIcon({Key? key}) : super(key: key);

  @override
  _ClockIconState createState() => _ClockIconState();
}

class _ClockIconState extends State<ClockIcon> {
  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.clock,
      color: const Color(0xff111827),
      size: 22.0.sp,
    );
  }
}
