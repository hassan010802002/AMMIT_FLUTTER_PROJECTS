// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/RightArrowIcon/right_arrow_icon.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/SearchingListIcon/searching_list_icon.dart';

import '../../../../../../Helpers/FixedSearchViewHelper/FixedSearchViewHelper.dart';
import '../../../Widgets/FixedRecentSearchText/fixed_recent_search_text.dart';

class PopularSearches extends StatefulWidget {
  const PopularSearches({Key? key}) : super(key: key);

  @override
  _PopularSearchesState createState() => _PopularSearchesState();
}

class _PopularSearchesState extends State<PopularSearches> {
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
                    const SearchingListIcon(),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    FixedRecentSearchText(textIndex: index)
                  ],
                ),
                const RightArrowIcon(),
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
