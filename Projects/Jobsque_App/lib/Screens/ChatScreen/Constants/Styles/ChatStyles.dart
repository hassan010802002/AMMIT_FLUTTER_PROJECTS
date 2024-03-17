// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/Colors/ChatColors.dart';

import '../../UI/Widgets/ChatMessageContainerWidget/chat_message_container_widget.dart';

class ChatStyles {
  //////////////////////////TextStyles////////////////////////////
  static TextStyle Function(BuildContext context) textStyle1 = (context) => TextStyle(
        color: ChatColors.color10,
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontFamily: TextFontFamily,
      );
  static TextStyle Function(BuildContext context) textStyle2 = (context) => TextStyle(
        color: ChatColors.color8,
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
        fontFamily: TextFontFamily,
      );
  static TextStyle Function(BuildContext context, ChatMessageContainerWidget widget) textStyle3 = (context, widget) => TextStyle(
        color: (widget.chatMessageIndex % 2) == 0 ? ChatColors.color14 : ChatColors.color2,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
      );
  static TextStyle Function(BuildContext context, ChatMessageContainerWidget widget) textStyle4 = (context, widget) => TextStyle(
        color: (widget.chatMessageIndex % 2) == 0 ? ChatColors.color8 : ChatColors.color3,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
        fontWeight: FontWeight.w500,
        fontFamily: TextFontFamily,
      );
  static TextStyle Function(BuildContext context) textStyle5 = (context) => TextStyle(
        fontWeight: FontWeight.w500,
        color: ChatColors.color8,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
        fontFamily: TextFontFamily,
      );
  static TextStyle Function(BuildContext context) textStyle6 = (context) => TextStyle(
        color: ChatColors.color10,
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle Function(BuildContext context) textStyle7 = (context) => TextStyle(
    color: ChatColors.color10,
    fontFamily: TextFontFamily,
    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
    fontWeight: FontWeight.w600,
  );

  /////////////////////////ContainerStyles////////////////////////
  static BoxDecoration Function(BuildContext context, ChatMessageContainerWidget widget) containerStyle1 = (context, widget) => BoxDecoration(
        color: (widget.chatMessageIndex % 2) == 0 ? const Color(0xffE5E7EB) : const Color(0xff3366FF),
        borderRadius: (widget.chatMessageIndex % 2) == 0
            ? BorderRadius.only(
                bottomLeft: Radius.circular(12.0.sp),
                bottomRight: Radius.circular(12.0.sp),
                topRight: Radius.circular(12.0.sp),
              )
            : BorderRadius.only(
                bottomRight: Radius.circular(12.0.sp),
                bottomLeft: Radius.circular(12.0.sp),
                topLeft: Radius.circular(12.0.sp),
              ),
      );

  ////////////////////////ButtonStyles////////////////////////////

  static ButtonStyle Function(BuildContext context) buttonStyle1 = (context) => ButtonStyle(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconSize: MaterialStatePropertyAll(35.0.sp),
        alignment: Alignment.center,
        fixedSize: MaterialStatePropertyAll(
          Size(
            MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w,
            MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.h,
          ),
        ),
      );
  static ButtonStyle Function(BuildContext context) buttonStyle2 = (context) => ButtonStyle(
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
              color: ChatColors.color5,
            ),
          ),
        ),
      );
  static ButtonStyle Function(BuildContext context) buttonStyle3 = (context) => ButtonStyle(
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
              color: ChatColors.color5,
              strokeAlign: BorderSide.strokeAlignInside,
              width: 1.5.w,
            ),
            borderRadius: BorderRadius.circular(45.0.sp),
          ),
        ),
        alignment: Alignment.centerLeft,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
  static ButtonStyle Function(BuildContext context) buttonStyle4 = (context) => ButtonStyle(
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
              color: ChatColors.color5,
              strokeAlign: BorderSide.strokeAlignInside,
              width: 1.5.w,
            ),
            borderRadius: BorderRadius.circular(45.0.sp),
          ),
        ),
        alignment: Alignment.centerLeft,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
  static ButtonStyle Function(BuildContext context) buttonStyle5 = (context) => ButtonStyle(
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
          color: ChatColors.color5,
        ),
      ),
    ),
  );
}
