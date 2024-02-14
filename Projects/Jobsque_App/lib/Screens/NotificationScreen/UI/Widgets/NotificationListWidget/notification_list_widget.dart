// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/NotificationHelper/NotificationHelper.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class NotificationListWidget extends StatefulWidget {
  const NotificationListWidget({super.key});

  @override
  _NotificationListWidgetState createState() => _NotificationListWidgetState();
}

class _NotificationListWidgetState extends State<NotificationListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      primary: true,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 20.0.h),
      itemBuilder: (context, index) {
        return Row(
          children: [
            OctoImage(
              image: AssetImage(NotificationHelper.logos(index)),
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              alignment: Alignment.center,
              height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.5.w,
              width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.5.h,
            ),
            SizedBox(
              width: 20.0.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      NotificationHelper.titles(index),
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: const Color(0xff111827),
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
                        fontFamily: TextFontFamily,
                      ),
                    ),
                    SizedBox(
                      width: NotificationHelper.titles(index).length > 5
                          ? NotificationHelper.titles(index).length < 8
                          ? MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.9.w
                          : MediaQuery_Size_Helper.MAX_WIDTH(context)! / 3.35.w
                          : MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.53.w,
                    ),
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
                SizedBox(),
                Text(
                  "Posted new design jobs",
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
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: const Color(0xffE5E7EB),
          height: 40.0.h,
          thickness: 1.5.h,
        );
      },
      itemCount: 4,
    );
  }
}
