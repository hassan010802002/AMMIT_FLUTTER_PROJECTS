// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Constants/AppliedJobsConsts.dart';


class AppliedJobPostTimeTextWidget extends StatefulWidget {
  const AppliedJobPostTimeTextWidget({super.key});

  @override
  _AppliedJobPostTimeTextWidgetState createState() => _AppliedJobPostTimeTextWidgetState();
}

class _AppliedJobPostTimeTextWidgetState extends State<AppliedJobPostTimeTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      AppliedJobsConsts.text1,
      style: AppliedJobsConsts.textStyle1(context),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}
