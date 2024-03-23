// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Widgets/FilterSearchContainer/filter_search_container.dart';

import '../../../../Controller/search_bloc.dart';

class FilterSearchView extends StatefulWidget {
  final SearchBloc controller;

  const FilterSearchView({super.key, required this.controller});

  @override
  _FilterSearchViewState createState() => _FilterSearchViewState();
}

class _FilterSearchViewState extends State<FilterSearchView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      primary: true,
      itemBuilder: (context, index) {
        return FilterSearchContainer(controller: widget.controller, filterIndex: index);
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          width: 10.0.w,
        );
      },
      itemCount: 4,
    );
  }
}
