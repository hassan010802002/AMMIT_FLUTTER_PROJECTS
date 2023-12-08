// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/UI/Widgets/Logo_Widget/logo_widget.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class AppBarView extends AppBar {
  AppBarView({Key? key}) : super(key: key);

  @override
  _AppBarViewState createState() => _AppBarViewState();
}

class _AppBarViewState extends State<AppBarView> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      primary: true,
      elevation: 0.0,
      actions: const [
        LogoWidget(),
      ],
      toolbarHeight: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 12.0.h,
    );
  }
}
