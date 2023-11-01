
// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/Apple_Button/Apple_Button_Widget.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/Facebock_Button/Facebock_Button_Widget.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/UI/Widgets/Google_Button/Google_Button_Widget.dart';
import 'package:flutter/material.dart';

class Custom_Social_Buttons extends StatelessWidget {
  const Custom_Social_Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Facebock_Button_Widget(),
        Google_Button_Widget(),
        Apple_Button_Widget(),
      ],
    );
  }
}