import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class SheetText1 extends StatefulWidget {
  const SheetText1({Key? key}) : super(key: key);

  @override
  _SheetText1State createState() => _SheetText1State();
}

class _SheetText1State extends State<SheetText1> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Job Tittle',
      softWrap: true,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/22.0.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
