import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class SkillRequiredTextWidget extends StatefulWidget {
  const SkillRequiredTextWidget({Key? key}) : super(key: key);

  @override
  _SkillRequiredTextWidgetState createState() => _SkillRequiredTextWidgetState();
}

class _SkillRequiredTextWidgetState extends State<SkillRequiredTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Skill Required',
      textAlign: TextAlign.start,
      softWrap: true,
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/22.0.sp,
        fontWeight: FontWeight.w600,
        color:  const Color(0xff111827),
        fontFamily: TextFontFamily,
      ),
    );
  }
}
