// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ChatSheetMuteButton extends StatefulWidget {
  const ChatSheetMuteButton({super.key});

  @override
  _ChatSheetMuteButtonState createState() => _ChatSheetMuteButtonState();
}

class _ChatSheetMuteButtonState extends State<ChatSheetMuteButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: OctoImage(
        image: const AssetImage("Assets/Images/notification.png"),
        alignment: Alignment.center,
        filterQuality: FilterQuality.high,
        fit: BoxFit.contain,
        width: 25.0.w,
        color: const Color(0xff374151),
      ),
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(
          Size(
            MediaQuery_Size_Helper.MAX_HEIGHT(context)!,
            MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
          ),
        ),
        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.0.h)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide(
              color: const Color(0xffD1D5DB),
              strokeAlign: BorderSide.strokeAlignInside,
              width: 1.5.w,
            ),
            borderRadius: BorderRadius.circular(45.0.sp),
          ),
        ),
        alignment: Alignment.centerLeft,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Mute',
            softWrap: true,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: const Color(0xff111827),
              fontFamily: TextFontFamily,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Icon(
            FontAwesomeIcons.angleRight,
            size: 25.0.sp,
            color: const Color(0xff111827),
          ),
        ],
      ),
    );
  }
}
