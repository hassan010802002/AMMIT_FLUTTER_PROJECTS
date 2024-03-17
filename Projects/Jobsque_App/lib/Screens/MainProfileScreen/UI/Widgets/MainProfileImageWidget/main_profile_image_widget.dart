// ignore_for_file: library_private_types_in_public_api

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/Controller/main_profile_controller_bloc.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class MainProfileImageWidget extends StatefulWidget {
  final MainProfileControllerBloc mainProfileControllerBloc;

  const MainProfileImageWidget({super.key, required this.mainProfileControllerBloc});

  @override
  _MainProfileImageWidgetState createState() => _MainProfileImageWidgetState();
}

class _MainProfileImageWidgetState extends State<MainProfileImageWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BlocBuilder<MainProfileControllerBloc, MainProfileControllerState>(
        bloc: widget.mainProfileControllerBloc,
        builder: (context, state) {
          return Container(
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
              image: !widget.mainProfileControllerBloc.isSuccessMainProfileData ||
                      widget.mainProfileControllerBloc.mainProfileDataModel!.data!.portofolio!.isEmpty
                  ? const DecorationImage(
                      image: AssetImage("Assets/Images/profileImage.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.high,
                    )
                  : null,
            ),
            alignment: Alignment.center,
            child: widget.mainProfileControllerBloc.isSuccessMainProfileData &&
                    widget.mainProfileControllerBloc.mainProfileDataModel!.data!.portofolio!.isNotEmpty
                ? CircleAvatar(
                    radius: 90.0.sp,
                    backgroundImage: CachedNetworkImageProvider(
                      widget.mainProfileControllerBloc.mainProfileDataModel!.data!.portofolio![0].image!,
                    ),
                  )
                : null,
          );
        },
      ),
    );
  }
}
