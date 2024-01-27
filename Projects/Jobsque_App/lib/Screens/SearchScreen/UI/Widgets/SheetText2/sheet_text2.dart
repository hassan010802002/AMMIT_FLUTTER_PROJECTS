import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class SheetText2 extends StatefulWidget {
  const SheetText2({Key? key}) : super(key: key);

  @override
  _SheetText2State createState() => _SheetText2State();
}

class _SheetText2State extends State<SheetText2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Location',
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
