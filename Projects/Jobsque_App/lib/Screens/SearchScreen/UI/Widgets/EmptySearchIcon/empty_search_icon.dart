// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:octo_image/octo_image.dart';

class EmptySearchIcon extends StatefulWidget {
  const EmptySearchIcon({super.key});

  @override
  _EmptySearchIconState createState() => _EmptySearchIconState();
}

class _EmptySearchIconState extends State<EmptySearchIcon> {
  @override
  Widget build(BuildContext context) {
    return OctoImage(
      image: const AssetImage("Assets/Images/SearchIlustration.png"),
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.0.w,
      height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.0.h,
      alignment: Alignment.center,
    );
  }
}
