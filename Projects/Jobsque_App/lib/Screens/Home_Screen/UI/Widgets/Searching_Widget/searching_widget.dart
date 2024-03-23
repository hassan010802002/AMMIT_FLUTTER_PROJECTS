// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

class SearchingWidget extends StatefulWidget {
  const SearchingWidget({super.key});

  @override
  _SearchingWidgetState createState() => _SearchingWidgetState();
}

class _SearchingWidgetState extends State<SearchingWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigatorHelper(context, AppRoutes.searchScreen);
      },
      child: Container(
        height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffD1D5DB),
            width: 1.5.w,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
          borderRadius: BorderRadius.circular(45.0.sp),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.0.h),
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: const Color(0XFF292D32),
              size: 22.0.sp,
            ),
            SizedBox(
              width: 12.0.w,
            ),
            Text(
              "Search....",
              softWrap: true,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: const Color(0xff9CA3AF),
                fontWeight: FontWeight.w500,
                fontFamily: TextFontFamily,
                fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
