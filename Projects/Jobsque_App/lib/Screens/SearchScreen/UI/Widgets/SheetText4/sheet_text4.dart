import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class SheetText4 extends StatefulWidget {
  const SheetText4({Key? key}) : super(key: key);

  @override
  _SheetText4State createState() => _SheetText4State();
}

class _SheetText4State extends State<SheetText4> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Job Type',
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
