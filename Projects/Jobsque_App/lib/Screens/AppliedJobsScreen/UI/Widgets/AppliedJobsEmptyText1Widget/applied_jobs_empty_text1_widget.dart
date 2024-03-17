// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';

class AppliedJobsEmptyText1Widget extends StatefulWidget {
  const AppliedJobsEmptyText1Widget({super.key});

  @override
  _AppliedJobsEmptyText1WidgetState createState() => _AppliedJobsEmptyText1WidgetState();
}

class _AppliedJobsEmptyText1WidgetState extends State<AppliedJobsEmptyText1Widget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      AppliedJobsConsts.text6,
      softWrap: true,
      textAlign: TextAlign.center,
      style: AppliedJobsConsts.textStyle11(context),
    );
  }
}
