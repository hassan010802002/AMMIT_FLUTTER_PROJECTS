// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:octo_image/octo_image.dart';

class SearchingListIcon extends StatefulWidget {
  const SearchingListIcon({super.key});

  @override
  _SearchingListIconState createState() => _SearchingListIconState();
}

class _SearchingListIconState extends State<SearchingListIcon> {
  @override
  Widget build(BuildContext context) {
    return OctoImage(
      image: const AssetImage("Assets/Images/search-status.png"),
      alignment: Alignment.centerLeft,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
      height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.h,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.w,
    );
  }
}
