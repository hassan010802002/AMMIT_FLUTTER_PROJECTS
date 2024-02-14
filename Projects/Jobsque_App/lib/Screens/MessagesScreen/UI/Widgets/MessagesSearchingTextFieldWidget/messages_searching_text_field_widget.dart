// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Components/CustomTextField/CustomTextField.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/messages_controller_cubit.dart';

class MessagesSearchingTextFieldWidget extends StatefulWidget {
  final MessagesControllerCubit messagesControllerCubit;

  const MessagesSearchingTextFieldWidget({super.key, required this.messagesControllerCubit});

  @override
  _MessagesSearchingTextFieldWidgetState createState() => _MessagesSearchingTextFieldWidgetState();
}

class _MessagesSearchingTextFieldWidgetState extends State<MessagesSearchingTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessagesControllerCubit, MessagesControllerState>(
      bloc: widget.messagesControllerCubit,
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
          width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.35.h,
          child: CustomTextField(
            fillColor: Colors.white,
            textEditingController: widget.messagesControllerCubit.searchingController,
            prefixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: const Color(0xff292D32),
              size: 24.0.sp,
            ),
            suffixIcon: widget.messagesControllerCubit.isSearching
                ? GestureDetector(
                    onTap: () {
                      widget.messagesControllerCubit.CancelSearch();
                    },
                    child: Icon(
                      FontAwesomeIcons.circleXmark,
                      size: 24.0.sp,
                    ),
                  )
                : null,
            keyboardType: TextInputType.name,
            hintText: "Type something...",
            hintStyle: TextStyle(
              fontWeight: FontWeight.w500,
              color: const Color(0xff9CA3AF),
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
              fontFamily: TextFontFamily,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45.0.sp),
              borderSide: BorderSide(
                color: const Color(0xffD1D5DB),
                strokeAlign: BorderSide.strokeAlignOutside,
                width: 1.5.w,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45.0.sp),
              borderSide: BorderSide(
                color: const Color(0xffD1D5DB),
                strokeAlign: BorderSide.strokeAlignOutside,
                width: 1.5.w,
              ),
            ),
            onChanged: (p0) {
              widget.messagesControllerCubit.CheckingSearch();
            },
            onTap: () {
              widget.messagesControllerCubit.CheckingSearch();
            },
          ),
        );
      },
    );
  }
}
