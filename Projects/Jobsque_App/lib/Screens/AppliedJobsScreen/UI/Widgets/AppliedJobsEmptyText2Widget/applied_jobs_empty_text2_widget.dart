// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';

class AppliedJobsEmptyText2Widget extends StatefulWidget {
  const AppliedJobsEmptyText2Widget({super.key});

  @override
  _AppliedJobsEmptyText2WidgetState createState() => _AppliedJobsEmptyText2WidgetState();
}

class _AppliedJobsEmptyText2WidgetState extends State<AppliedJobsEmptyText2Widget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      AppliedJobsConsts.text7,
      softWrap: true,
      textAlign: TextAlign.center,
      style: AppliedJobsConsts.textStyle12(context),
    );
  }
}
