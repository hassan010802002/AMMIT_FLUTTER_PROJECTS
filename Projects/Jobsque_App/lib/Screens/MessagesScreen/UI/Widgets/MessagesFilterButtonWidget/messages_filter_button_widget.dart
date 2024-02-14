// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/messages_controller_cubit.dart';
import '../../Views/MainMessagesView/MessagesBottomSheetView/messages_bottom_sheet_view.dart';

class MessagesFilterButtonWidget extends StatefulWidget {
  final MessagesControllerCubit messagesControllerCubit;
  const MessagesFilterButtonWidget({super.key, required this.messagesControllerCubit});

  @override
  _MessagesFilterButtonWidgetState createState() => _MessagesFilterButtonWidgetState();
}

class _MessagesFilterButtonWidgetState extends State<MessagesFilterButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 30.0.sp,
      style: ButtonStyle(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconSize: MaterialStatePropertyAll(25.0.sp),
        alignment: Alignment.center,
        fixedSize: MaterialStatePropertyAll(
          Size(
            MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.w,
            MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
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
      onPressed: () {
        showModalBottomSheet(
          context: context,
          showDragHandle: true,
          isScrollControlled: true,
          enableDrag: true,
          builder: (context) {
            return MessagesBottomSheetView(messagesControllerCubit: widget.messagesControllerCubit,);
          },
        );
      },
      icon: const Icon(
        FontAwesomeIcons.sliders,
        color: Color(0xff292D32),
      ),
    );
  }
}
