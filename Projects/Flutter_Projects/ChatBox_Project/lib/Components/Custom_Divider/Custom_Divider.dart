// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Custom_Divider extends StatelessWidget {
  final Color? dividerColor;
  final double? thickness;

  const Custom_Divider({
    super.key,
    this.dividerColor = const Color(0xffCDD1D0),
    this.thickness = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Divider(
            height: 2.0,
            color: dividerColor,
            thickness: thickness,
          ),
        ),
      ],
    );
  }
}