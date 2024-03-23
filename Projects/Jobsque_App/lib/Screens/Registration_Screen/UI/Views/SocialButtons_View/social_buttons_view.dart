// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Facebook_Button_Widget/facebook_button_widget.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Google_Button_Widget/google_button_widget.dart';

class SocialButtonsView extends StatefulWidget {
  const SocialButtonsView({super.key});

  @override
  _SocialButtonsViewState createState() => _SocialButtonsViewState();
}

class _SocialButtonsViewState extends State<SocialButtonsView> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [GoogleButtonWidget(), FacebookButtonWidget()],
    );
  }
}
