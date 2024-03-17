// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/Colors/ChatColors.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/Styles/ChatStyles.dart';
import 'package:jobsque_app/Screens/ChatScreen/Constants/Texts/ChatTexts.dart';
import 'package:jobsque_app/Screens/ChatScreen/UI/Widgets/ChatMessageContainerWidget/chat_message_container_widget.dart';

class ChatConsts{

  ////////////////////////////Texts///////////////////////////

  static const text1 = ChatTexts.text1;
  static const text2 = ChatTexts.text2;
  static const text3 = ChatTexts.text3;
  static const text4 = ChatTexts.text4;
  static const text5 = ChatTexts.text5;
  static const text6 = ChatTexts.text6;
  static const text7 = ChatTexts.text7;
  static const text8 = ChatTexts.text8;
  static const text9 = ChatTexts.text9;
  static const text10 = ChatTexts.text10;

  ///////////////////////////Images//////////////////////////

  static const image1 = ChatTexts.image1;
  static const image2 = ChatTexts.image2;
  static const image3 = ChatTexts.image3;
  static const image4 = ChatTexts.image4;
  static const image5 = ChatTexts.image5;
  static const image6 = ChatTexts.image6;
  static const image7 = ChatTexts.image7;
  static const image8 = ChatTexts.image8;

  //////////////////////////Styles///////////////////////////

  static TextStyle Function(BuildContext context) textStyle1 = ChatStyles.textStyle1;
  static TextStyle Function(BuildContext context) textStyle2 = ChatStyles.textStyle2;
  static TextStyle Function(BuildContext context, ChatMessageContainerWidget widget) textStyle3 = ChatStyles.textStyle3;
  static TextStyle Function(BuildContext context, ChatMessageContainerWidget widget) textStyle4 = ChatStyles.textStyle4;
  static TextStyle Function(BuildContext context) textStyle5 = ChatStyles.textStyle5;
  static TextStyle Function(BuildContext context) textStyle6 = ChatStyles.textStyle6;
  static TextStyle Function(BuildContext context) textStyle7 = ChatStyles.textStyle7;

  static BoxDecoration Function(BuildContext context, ChatMessageContainerWidget widget) containerStyle1 = ChatStyles.containerStyle1;

  static ButtonStyle Function(BuildContext context) buttonStyle1 = ChatStyles.buttonStyle1;
  static ButtonStyle Function(BuildContext context) buttonStyle2 = ChatStyles.buttonStyle2;
  static ButtonStyle Function(BuildContext context) buttonStyle3 = ChatStyles.buttonStyle3;
  static ButtonStyle Function(BuildContext context) buttonStyle4 = ChatStyles.buttonStyle4;
  static ButtonStyle Function(BuildContext context) buttonStyle5 = ChatStyles.buttonStyle5;

  /////////////////////////Colors///////////////////////////

  static const color5 = ChatColors.color5;
  static const color8 = ChatColors.color8;
  static const color9 = ChatColors.color9;
  static const color10 = ChatColors.color10;
  static const color13 = ChatColors.color13;
  static const color15 = ChatColors.color15;
  static const color16 = ChatColors.color16;

}