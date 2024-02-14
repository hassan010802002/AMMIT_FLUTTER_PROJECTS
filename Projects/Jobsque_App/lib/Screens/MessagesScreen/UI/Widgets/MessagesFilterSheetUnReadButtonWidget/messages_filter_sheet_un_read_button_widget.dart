// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/messages_controller_cubit.dart';

class MessagesFilterSheetUnReadButtonWidget extends StatefulWidget {
  final MessagesControllerCubit messagesControllerCubit;
  const MessagesFilterSheetUnReadButtonWidget({super.key, required this.messagesControllerCubit});

  @override
  _MessagesFilterSheetUnReadButtonWidgetState createState() => _MessagesFilterSheetUnReadButtonWidgetState();
}

class _MessagesFilterSheetUnReadButtonWidgetState extends State<MessagesFilterSheetUnReadButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.messagesControllerCubit.ChangeUnReadMessagesState();
      },
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(
          Size(
            MediaQuery_Size_Helper.MAX_HEIGHT(context)!.w,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Unread',
            softWrap: true,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: const Color(0xff374151),
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
