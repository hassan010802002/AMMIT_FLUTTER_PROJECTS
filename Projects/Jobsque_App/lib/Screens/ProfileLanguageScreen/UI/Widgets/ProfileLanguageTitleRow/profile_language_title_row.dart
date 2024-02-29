// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/ProfileLanguageHelper/ProfileLanguageHelper.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/profile_language_controller_cubit.dart';

class ProfileLanguageTitleRow extends StatefulWidget {
  final int languageIndex;
  final ProfileLanguageControllerCubit profileLanguageControllerCubit;

  const ProfileLanguageTitleRow({super.key, required this.languageIndex, required this.profileLanguageControllerCubit});

  @override
  _ProfileLanguageTitleRowState createState() => _ProfileLanguageTitleRowState();
}

class _ProfileLanguageTitleRowState extends State<ProfileLanguageTitleRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            OctoImage(
              image: AssetImage(ProfileLanguageHelper.countryFlag(widget.languageIndex)),
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              width: 15.0.w,
            ),
            Text(
              ProfileLanguageHelper.countryTitle(widget.languageIndex),
              style: TextStyle(
                color: const Color(0xff111827),
                fontFamily: TextFontFamily,
                fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
                fontWeight: FontWeight.w600,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        BlocBuilder<ProfileLanguageControllerCubit, ProfileLanguageControllerState>(
          bloc: widget.profileLanguageControllerCubit,
          builder: (context, state) {
            return Radio<String>(
              splashRadius: 30.0.sp,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              activeColor: const Color(0xff3366FF),
              materialTapTargetSize: MaterialTapTargetSize.padded,
              value: ProfileLanguageHelper.countryTitle(widget.languageIndex),
              groupValue: widget.profileLanguageControllerCubit.currentProfileLanguageGroup,
              onChanged: (value) {
                widget.profileLanguageControllerCubit.UpdatingProfileLanguage(widget.languageIndex);
              },
            );
          },
        ),
      ],
    );
  }
}
