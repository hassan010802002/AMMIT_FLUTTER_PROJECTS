// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/Home_Screen/Controller/home_bloc.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/NotifactionIcon_Widget/notifaction_icon_widget.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/SubWelcome_Text/sub_welcome_text.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Widgets/WelcomeUser_Text/welcome_user_text.dart';

class TopView extends StatefulWidget {
  final HomeBloc controller;

  const TopView({super.key, required this.controller});

  @override
  _TopViewState createState() => _TopViewState();
}

class _TopViewState extends State<TopView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeUserText(controller: widget.controller),
            const SubWelcomeText(),
          ],
        ),
        const NotifactionIconWidget()
      ],
    );
  }
}
