import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsSkillRequiredTextWidget extends StatefulWidget {
  final DetailsCubit? detailsCubitController;
  const JobDetailsSkillRequiredTextWidget({Key? key, required this.detailsCubitController}) : super(key: key);

  @override
  _JobDetailsSkillRequiredTextWidgetState createState() => _JobDetailsSkillRequiredTextWidgetState();
}

class _JobDetailsSkillRequiredTextWidgetState extends State<JobDetailsSkillRequiredTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.detailsCubitController!.currentJobDetailsData!.jobSkill!,
      softWrap: true,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontFamily: TextFontFamily,
        color: const Color(0xff4B5563),
        fontWeight: FontWeight.w500,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/30.0.sp,
      ),
    );
  }
}
