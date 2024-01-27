// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/ClockIcon/clock_icon.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/CloseIcon/close_icon.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/FixedRecentSearchText/fixed_recent_search_text.dart';

import '../../../../../../Helpers/FixedSearchViewHelper/FixedSearchViewHelper.dart';

class RecentSearches extends StatefulWidget {
  const RecentSearches({Key? key}) : super(key: key);

  @override
  _RecentSearchesState createState() => _RecentSearchesState();
}

class _RecentSearchesState extends State<RecentSearches> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        FixedSearchViewHelper.searchTitles.length,
        (index) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const ClockIcon(),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    FixedRecentSearchText(textIndex: index)
                  ],
                ),
                const CloseIcon(),
              ],
            ),
            SizedBox(
              height: 22.0.h,
            ),
          ],
        ),
      ),
    );
  }
}
