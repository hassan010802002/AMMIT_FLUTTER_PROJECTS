// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Config/AppConfig.dart';
import '../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class CustomProfileOtherButton extends StatelessWidget {
  final String titleText;
  final void Function()? onPressed;

  const CustomProfileOtherButton(
    this.titleText, {
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        alignment: Alignment.center,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 0.0.w, vertical: 8.0.h)),
        fixedSize: MaterialStatePropertyAll(Size(
          MediaQuery_Size_Helper.MAX_WIDTH(context)!.w,
          MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h,
        )),
        elevation: const MaterialStatePropertyAll(0.0),
        backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleText,
            style: TextStyle(
              color: const Color(0xff111827),
              fontFamily: TextFontFamily,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
              fontWeight: FontWeight.w600,
            ),
            softWrap: true,
            textAlign: TextAlign.start,
          ),
          Icon(
            FontAwesomeIcons.arrowRightLong,
            size: 15.0.sp,
            color: const Color(0xff111827),
          ),
        ],
      ),
    );
  }
}
