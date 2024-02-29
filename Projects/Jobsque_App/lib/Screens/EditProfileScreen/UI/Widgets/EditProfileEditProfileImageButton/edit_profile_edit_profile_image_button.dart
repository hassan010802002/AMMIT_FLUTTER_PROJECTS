// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/edit_profile_controller_bloc.dart';

class EditProfileEditProfileImageButton extends StatefulWidget {
  final EditProfileControllerBloc editProfileControllerBloc;

  const EditProfileEditProfileImageButton({super.key, required this.editProfileControllerBloc});

  @override
  _EditProfileEditProfileImageButtonState createState() => _EditProfileEditProfileImageButtonState();
}

class _EditProfileEditProfileImageButtonState extends State<EditProfileEditProfileImageButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 8.0.h)),
        alignment: Alignment.center,
        fixedSize: MaterialStatePropertyAll(Size(
          MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.8.w,
          MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 20.0.h,
        )),
      ),
      onPressed: () {
        widget.editProfileControllerBloc.UpdatingUserProfileImage();
      },
      child: Text(
        'Change Photo',
        style: TextStyle(
          color: const Color(0xff3366FF),
          fontFamily: TextFontFamily,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
          fontWeight: FontWeight.w600,
        ),
        softWrap: true,
        textAlign: TextAlign.center,
      ),
    );
  }
}
