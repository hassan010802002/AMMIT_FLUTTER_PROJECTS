// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Base_Home/Controller/base_cubit.dart';
import 'package:jobsque_app/Screens/Base_Home/base__home.dart';
import 'package:jobsque_app/Screens/MessagesScreen/Controller/messages_controller_cubit.dart';
import 'package:jobsque_app/Screens/MessagesScreen/UI/Views/Messages_Main_View.dart';

class MessagesScreen extends StatefulWidget {
  int? baseIndex;

  MessagesScreen({super.key, required this.baseIndex});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  MessagesControllerCubit? messagesControllerCubit;

  @override
  void initState() {
    messagesControllerCubit = MessagesControllerCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => messagesControllerCubit!),
        BlocProvider(create: (context) => BaseCubit(context, widget.baseIndex!)),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          bottomNavigationBar: BaseHome(baseIndex: widget.baseIndex!),
          body: MessagesMainView(messagesControllerCubit: messagesControllerCubit!),
        ),
      ),
    );
  }
}
