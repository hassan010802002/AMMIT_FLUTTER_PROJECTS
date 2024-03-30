// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Divider2Widget extends StatefulWidget {
  const Divider2Widget({super.key});

  @override
  _Divider2WidgetState createState() => _Divider2WidgetState();
}

class _Divider2WidgetState extends State<Divider2Widget> {
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
