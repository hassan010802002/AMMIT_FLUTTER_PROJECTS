// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/ProfileLanguageHelper/ProfileLanguageHelper.dart';
import 'package:jobsque_app/Screens/ProfileLanguageScreen/UI/Widgets/LanguageScreenTitle/language_screen_title.dart';
import 'package:jobsque_app/Screens/ProfileLanguageScreen/UI/Widgets/ProfileLanguageTitleRow/profile_language_title_row.dart';

import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Controller/profile_language_controller_cubit.dart';

class ProfileLanguageMainView extends StatefulWidget {
  final ProfileLanguageControllerCubit profileLanguageControllerCubit;

  const ProfileLanguageMainView({super.key, required this.profileLanguageControllerCubit});

  @override
  State<ProfileLanguageMainView> createState() => _ProfileLanguageMainViewState();
}

class _ProfileLanguageMainViewState extends State<ProfileLanguageMainView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButtonWidget(),
              const LanguageScreenTitle(),
              const SizedBox(),
            ],
          ),
          SizedBox(
            height: 30.0.h,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ProfileLanguageTitleRow(
                  languageIndex: index,
                  profileLanguageControllerCubit: widget.profileLanguageControllerCubit,
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 30.0.h,
                  thickness: 1.5.h,
                  color: const Color(0xffD1D5DB),
                );
              },
              itemCount: ProfileLanguageHelper.countryFlags.length,
            ),
          ),
        ],
      ),
    );
  }
}
