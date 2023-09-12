import 'package:flutter/material.dart';

class Custom_Divider extends StatelessWidget {
  final Color? dividerColor;
  final EdgeInsetsGeometry? padding;
  final double? thickness;

  Custom_Divider({
    super.key,
    this.dividerColor = const Color.fromRGBO(0, 0, 0, 0.5),
    this.padding =const EdgeInsets.only(top: 20.0),
    this.thickness = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: padding!,
            child: Divider(
              height: 2.0,
              color: dividerColor,
              thickness: thickness,
            ),
          ),
        ),
      ],
    );
  }
}