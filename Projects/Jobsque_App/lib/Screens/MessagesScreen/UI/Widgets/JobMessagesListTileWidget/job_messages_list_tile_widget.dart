// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/MessagesHelper/MessagesHelper.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobMessagesListTileWidget extends StatefulWidget {
  final int messageIndex;

  const JobMessagesListTileWidget({super.key, required this.messageIndex});

  @override
  _JobMessagesListTileWidgetState createState() => _JobMessagesListTileWidgetState();
}

class _JobMessagesListTileWidgetState extends State<JobMessagesListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        NavigatorHelper(
          context,
          AppRoutes.chatScreen,
          screenArguments: <String, String>{
            "message_icon" : MessagesHelper.logos(widget.messageIndex),
            "message_title" : MessagesHelper.titles(widget.messageIndex),
          },
        );
      },
      titleTextStyle: TextStyle(
        color: const Color(0xff111827),
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontFamily: TextFontFamily,
      ),
      subtitleTextStyle: TextStyle(
        color: const Color(0xff6B7280),
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
        fontFamily: TextFontFamily,
      ),
      style: ListTileStyle.list,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      minVerticalPadding: 10.0.h,
      leading: OctoImage(
        image: AssetImage(MessagesHelper.logos(widget.messageIndex)),
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
        alignment: Alignment.centerLeft,
        height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.5.h,
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.5.w,
      ),
      subtitle: Text(
        MessagesHelper.subTitles(widget.messageIndex),
        softWrap: true,
        textAlign: TextAlign.start,
      ),
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                MessagesHelper.titles(widget.messageIndex),
                softWrap: true,
                textAlign: TextAlign.start,
              ),
              Text(
                widget.messageIndex == 0 || widget.messageIndex == 1
                    ? '12.39'
                    : widget.messageIndex == 4 || widget.messageIndex == 5
                        ? "12/8"
                        : widget.messageIndex == 3
                            ? "09.45"
                            : "Yesterday",
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: widget.messageIndex <= 2 ? const Color(0xff3366FF) : const Color(0xff6B7280),
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 30.0.sp,
                  fontFamily: TextFontFamily,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.0.h,
          ),
        ],
      ),
    );
  }
}
