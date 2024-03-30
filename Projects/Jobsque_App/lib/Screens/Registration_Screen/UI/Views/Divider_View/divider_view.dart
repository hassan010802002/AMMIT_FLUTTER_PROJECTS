// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Divider1_Widget/divider1_widget.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Divider2_Widget/divider2_widget.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Divider_Text_Widget/divider_text_widget.dart';

class DividerView extends StatefulWidget {
  const DividerView({super.key});

  @override
  _DividerViewState createState() => _DividerViewState();
}

class _DividerViewState extends State<DividerView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Divider1Widget(),
        SizedBox(
          width: 8.0.w,
        ),
        const DividerTextWidget(),
        SizedBox(
          width: 8.0.w,
        ),
        const Divider2Widget()
      ],
    );
  }
}
