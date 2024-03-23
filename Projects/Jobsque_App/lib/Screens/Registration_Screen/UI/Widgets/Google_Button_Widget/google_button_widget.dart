// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class GoogleButtonWidget extends StatefulWidget {
  const GoogleButtonWidget({super.key});

  @override
  _GoogleButtonWidgetState createState() => _GoogleButtonWidgetState();
}

class _GoogleButtonWidgetState extends State<GoogleButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: RegistrationConsts.buttonStyle3(context),
      icon: OctoImage(
        image: const AssetImage(RegistrationConsts.image3),
        alignment: Alignment.centerLeft,
        filterQuality: FilterQuality.high,
        fit: BoxFit.contain,
        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.w,
        height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 30.0.h,
      ),
      label: Text(
        RegistrationConsts.text4,
        style: RegistrationConsts.style4(context),
        textAlign: TextAlign.justify,
        softWrap: true,
      ),
    );
  }
}
