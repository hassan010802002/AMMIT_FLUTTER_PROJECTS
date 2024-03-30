// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Divider1Widget extends StatefulWidget {
  const Divider1Widget({super.key});

  @override
  _Divider1WidgetState createState() => _Divider1WidgetState();
}

class _Divider1WidgetState extends State<Divider1Widget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: const Color(0xffD1D5DB),
        thickness: 2.0.h,
      ),
    );
  }
}
