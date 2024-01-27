import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class SheetText3 extends StatefulWidget {
  const SheetText3({Key? key}) : super(key: key);

  @override
  _SheetText3State createState() => _SheetText3State();
}

class _SheetText3State extends State<SheetText3> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Salary',
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
