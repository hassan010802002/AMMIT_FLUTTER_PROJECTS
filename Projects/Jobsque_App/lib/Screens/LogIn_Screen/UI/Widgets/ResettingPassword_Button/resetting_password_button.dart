import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResettingPasswordButton extends StatefulWidget {
  const ResettingPasswordButton({Key? key}) : super(key: key);

  @override
  _ResettingPasswordButtonState createState() => _ResettingPasswordButtonState();
}

class _ResettingPasswordButtonState extends State<ResettingPasswordButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Forgot Password?",
        style: TextStyle(
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/25.0.sp,
          fontWeight: FontWeight.w500,
          fontFamily: TextFontFamily,
          color: const Color(0xff3366FF),
        ),
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );
  }
}
