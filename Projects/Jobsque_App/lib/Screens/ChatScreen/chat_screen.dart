// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/ChatScreen/Controller/chat_controller_cubit.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Views/ChatAppBarView/chat_app_bar_view.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Views/Chat_Main_View.dart';

class ChatScreen extends StatefulWidget {
  final ChatControllerCubit chatControllerCubit = ChatControllerCubit();
  final Map<String , String> screenData;

  ChatScreen({ super.key, required this.screenData});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => widget.chatControllerCubit,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          appBar: ChatAppBarView(screenData: widget.screenData),
          backgroundColor: const Color(0xffFAFAFA),
          body: ChatMainView(chatControllerCubit: widget.chatControllerCubit),
        ),
      ),
    );
  }
}