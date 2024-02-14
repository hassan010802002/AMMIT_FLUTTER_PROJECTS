// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque_app/Components/CustomTextField/CustomTextField.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/SearchScreen/Controller/search_bloc.dart';

class SearchingField extends StatefulWidget {
  final SearchBloc controller;

  const SearchingField({super.key, required this.controller});

  @override
  _SearchingFieldState createState() => _SearchingFieldState();
}

class _SearchingFieldState extends State<SearchingField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: widget.controller,
      builder: (context, state) {
        return CustomTextField(
          fillColor: Colors.white,
          textEditingController: widget.controller.searchingController,
          prefixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24.0.sp,
          ),
          suffixIcon: widget.controller.isSearching
              ? GestureDetector(
                  onTap: () {
                    widget.controller.CancelSearch();
                  },
                  child: Icon(
                    FontAwesomeIcons.circleXmark,
                    size: 24.0.sp,
                  ),
                )
              : null,
          keyboardType: TextInputType.name,
          hintText: "Type something...",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w500,
            color: const Color(0xff9CA3AF),
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
            fontFamily: TextFontFamily,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45.0.sp),
            borderSide: BorderSide(
              color: const Color(0xffD1D5DB),
              strokeAlign: BorderSide.strokeAlignOutside,
              width: 1.5.w,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(45.0.sp),
            borderSide: BorderSide(
              color: const Color(0xffD1D5DB),
              strokeAlign: BorderSide.strokeAlignOutside,
              width: 1.5.w,
            ),
          ),
          onEditingComplete: () {
            widget.controller.JobSearching(jobName: widget.controller.searchingController.text);
          },
          onChanged: (p0) {
            widget.controller.CheckingSearch();
          },
          onTap: () {
            widget.controller.CheckingSearch();
          },
        );
      },
    );
  }
}
