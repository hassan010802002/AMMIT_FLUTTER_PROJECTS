// ignore_for_file: camel_case_types, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/MessagesScreen/Controller/messages_controller_cubit.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Views/EmptyMessagesView/empty_messages_view.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Views/MainMessagesView/main_messages_view.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Views/UnReadMessagesView/un_read_messages_view.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Widgets/MessagesFilterButtonWidget/messages_filter_button_widget.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Widgets/MessagesSearchingTextFieldWidget/messages_searching_text_field_widget.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Widgets/MessagesTitleTextWidget/messages_title_text_widget.dart';

import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';

class MessagesMainView extends StatefulWidget {
  final MessagesControllerCubit messagesControllerCubit;

  const MessagesMainView({super.key, required this.messagesControllerCubit});

  @override
  State<MessagesMainView> createState() => _MessagesMainViewState();
}

class _MessagesMainViewState extends State<MessagesMainView> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
        child: BlocBuilder<MessagesControllerCubit, MessagesControllerState>(
          bloc: widget.messagesControllerCubit,
          builder: (context, state) {
            return Column(
              mainAxisAlignment: widget.messagesControllerCubit.isMainMessagesView || widget.messagesControllerCubit.isUnReadMessagesView
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButtonWidget(),
                        const MessagesTitleTextWidget(),
                        const SizedBox(),
                      ],
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MessagesSearchingTextFieldWidget(messagesControllerCubit: widget.messagesControllerCubit),
                        MessagesFilterButtonWidget(messagesControllerCubit: widget.messagesControllerCubit),
                      ],
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                  ],
                ),
                widget.messagesControllerCubit.isMainMessagesView
                    ? const Expanded(
                        child: MainMessagesView(),
                      )
                    : widget.messagesControllerCubit.isUnReadMessagesView
                        ? const UnReadMessagesView()
                        : const EmptyMessagesView(),
                const SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
