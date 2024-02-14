// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:octo_image/octo_image.dart';

class NotifactionIconWidget extends StatefulWidget {
  const NotifactionIconWidget({super.key});

  @override
  _NotifactionIconWidgetState createState() => _NotifactionIconWidgetState();
}

class _NotifactionIconWidgetState extends State<NotifactionIconWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigatorHelper(context, AppRoutes.notificationScreen);
      },
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 30.0.sp,
        child: ClipOval(
          child: Container(
            padding: EdgeInsets.all(14.0.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0.sp),
              border: Border.all(
                color: const Color(0xffD1D5DB),
                width: 1.5.w,
              ),
            ),
            child: Center(
              child: OctoImage(
                image: const AssetImage("Assets/Images/notification.png"),
                width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.w,
                height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h,
                filterQuality: FilterQuality.high,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
