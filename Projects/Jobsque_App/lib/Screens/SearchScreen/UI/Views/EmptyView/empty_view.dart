// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/EmptySearchIcon/empty_search_icon.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/EmptySearchText/empty_search_text.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/EmptySearchText2/empty_search_text2.dart';

class EmptyView extends StatefulWidget {
  const EmptyView({Key? key}) : super(key: key);

  @override
  _EmptyViewState createState() => _EmptyViewState();
}

class _EmptyViewState extends State<EmptyView> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w, top: 15.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)!/5.8.h,
            ),
            const EmptySearchIcon(),
            SizedBox(
              height: 25.0.h,
            ),
            const EmptySearchText(),
            SizedBox(
              height: 10.0.h,
            ),
            const EmptySearchText2(),
          ],
        ),
      ),
    );
  }
}
