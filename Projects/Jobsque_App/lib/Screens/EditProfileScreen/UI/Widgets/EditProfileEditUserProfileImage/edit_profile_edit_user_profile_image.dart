// ignore_for_file: library_private_types_in_public_api

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/edit_profile_controller_bloc.dart';

class EditProfileEditUserProfileImage extends StatefulWidget {
  final EditProfileControllerBloc editProfileControllerBloc;

  const EditProfileEditUserProfileImage({super.key, required this.editProfileControllerBloc});

  @override
  _EditProfileEditUserProfileImageState createState() => _EditProfileEditUserProfileImageState();
}

class _EditProfileEditUserProfileImageState extends State<EditProfileEditUserProfileImage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileControllerBloc, EditProfileControllerState>(
      bloc: widget.editProfileControllerBloc,
      builder: (context, state) {
        return ClipOval(
          child: GestureDetector(
            onTap: () {
              widget.editProfileControllerBloc.UpdatingUserProfileImage();
            },
            child: Container(
              width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.0.w,
              height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.0.h,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  strokeAlign: BorderSide.strokeAlignInside,
                  width: 3.0.w,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(90.0.sp),
                image: widget.editProfileControllerBloc.isUserProfileImage
                    ? null
                    : const DecorationImage(
                        image: AssetImage("Assets/Images/profileImage.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        filterQuality: FilterQuality.high,
                      ),
              ),
              alignment: Alignment.center,
              child: Center(
                child: widget.editProfileControllerBloc.isUserProfileImage
                    ? ClipOval(
                        child: Image.file(
                          File(widget.editProfileControllerBloc.profileImageFile!),
                          alignment: Alignment.center,
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          gaplessPlayback: true,
                          height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.0.h,
                          width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 4.0.w,
                        ),
                      )
                    : OctoImage(
                        image: const AssetImage("Assets/Images/camera.png"),
                        alignment: Alignment.center,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.contain,
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
