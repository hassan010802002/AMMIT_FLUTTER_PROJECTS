// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ChatVoiceIconButtonWidget extends StatefulWidget {
  const ChatVoiceIconButtonWidget({super.key});

  @override
  _ChatVoiceIconButtonWidgetState createState() => _ChatVoiceIconButtonWidgetState();
}

class _ChatVoiceIconButtonWidgetState extends State<ChatVoiceIconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 30.0.sp,
      style: ButtonStyle(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconSize: MaterialStatePropertyAll(20.0.sp),
        alignment: Alignment.center,
        fixedSize: MaterialStatePropertyAll(
          Size(
            MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 18.0.w,
            MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 18.0.h,
          ),
        ),
        shape: MaterialStatePropertyAll(
          CircleBorder(
            side: BorderSide(
              width: 1.5.w,
              strokeAlign: BorderSide.strokeAlignInside,
              color: const Color(0xffD1D5DB),
            ),
          ),
        ),
      ),
      onPressed: () {},
      icon: const Icon(
        FontAwesomeIcons.microphoneLines,
        color: Color(0xff292D32),
      ),
    );
  }
}
