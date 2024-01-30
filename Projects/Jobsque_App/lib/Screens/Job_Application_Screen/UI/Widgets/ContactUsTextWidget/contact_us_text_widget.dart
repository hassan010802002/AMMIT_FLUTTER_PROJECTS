import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ContactUsTextWidget extends StatefulWidget {
  const ContactUsTextWidget({Key? key}) : super(key: key);

  @override
  _ContactUsTextWidgetState createState() => _ContactUsTextWidgetState();
}

class _ContactUsTextWidgetState extends State<ContactUsTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Contact Us',
      softWrap: true,
      style: TextStyle(
        color: const Color(0xff111827),
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/22.0.sp,
        fontFamily: TextFontFamily,
      ),
      textAlign: TextAlign.start,
    );
  }
}
