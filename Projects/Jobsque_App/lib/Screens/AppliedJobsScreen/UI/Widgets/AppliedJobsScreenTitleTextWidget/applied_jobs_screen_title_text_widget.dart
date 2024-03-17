// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';


class AppliedJobsScreenTitleTextWidget extends StatefulWidget {
  const AppliedJobsScreenTitleTextWidget({super.key});

  @override
  _AppliedJobsScreenTitleTextWidgetState createState() => _AppliedJobsScreenTitleTextWidgetState();
}

class _AppliedJobsScreenTitleTextWidgetState extends State<AppliedJobsScreenTitleTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      AppliedJobsConsts.text3,
      style: AppliedJobsConsts.textStyle5(context),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}
