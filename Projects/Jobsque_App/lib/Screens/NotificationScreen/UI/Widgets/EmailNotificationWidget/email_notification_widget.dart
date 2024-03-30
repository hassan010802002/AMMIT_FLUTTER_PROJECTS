// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class EmailNotificationWidget extends StatefulWidget {
  const EmailNotificationWidget({super.key});

  @override
  _EmailNotificationWidgetState createState() => _EmailNotificationWidgetState();
}

class _EmailNotificationWidgetState extends State<EmailNotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OctoImage(
          image: const AssetImage("Assets/Images/Email.png"),
          height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.h,
          width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
          fit: BoxFit.contain,
        ),
        SizedBox(
          width: 20.0.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Email setup successful',
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xff111827),
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                    fontFamily: TextFontFamily,
                  ),
                ),
                SizedBox(
                  width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.w,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FontAwesomeIcons.solidCircle,
                      color: const Color(0xffDBB40E),
                      size: 10.0.sp,
                    ),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Text(
                      '10.00AM',
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: const Color(0xff6B7280),
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
                        fontFamily: TextFontFamily,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'Your email setup was successful with the following\ndetails: Your new email is rafifdianganz@gmail.com.',
              softWrap: true,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: const Color(0xff6B7280),
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 32.0.sp,
                fontFamily: TextFontFamily,
              ),
            ),
          ],
        )
      ],
    );
  }
}
