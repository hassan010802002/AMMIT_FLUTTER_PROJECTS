import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class DescriptionTextWidget extends StatefulWidget {
  const DescriptionTextWidget({Key? key}) : super(key: key);

  @override
  _DescriptionTextWidgetState createState() => _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Job Description',
      textAlign: TextAlign.start,
      softWrap: true,
      style: TextStyle(
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/22.0.sp,
        fontWeight: FontWeight.w600,
        color: const Color(0xff111827),
      ),
    );
  }
}
