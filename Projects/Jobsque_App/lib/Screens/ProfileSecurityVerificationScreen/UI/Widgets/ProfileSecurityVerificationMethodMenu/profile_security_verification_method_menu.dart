// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/Controller/profile_security_verification_controller_cubit.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityVerificationMethodMenu extends StatefulWidget {
  final ProfileSecurityVerificationControllerCubit profileSecurityVerificationControllerCubit;

  const ProfileSecurityVerificationMethodMenu({super.key, required this.profileSecurityVerificationControllerCubit});

  @override
  _ProfileSecurityVerificationMethodMenuState createState() => _ProfileSecurityVerificationMethodMenuState();
}

class _ProfileSecurityVerificationMethodMenuState extends State<ProfileSecurityVerificationMethodMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      dropdownMenuEntries: const [
        DropdownMenuEntry(
          value: "SMS",
          label: "Telephone number (SMS)",
        ),
        DropdownMenuEntry(
          value: "GMail",
          label: "Email Address (G-Mail)",
        ),
      ],
      trailingIcon: const Icon(
        FontAwesomeIcons.chevronDown,
        color: Color(0xff111827),
      ),
      controller: TextEditingController(),
      enableFilter: true,
      enableSearch: true,
      enabled: true,
      menuHeight: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 3.5.h,
      menuStyle: MenuStyle(
        alignment: AlignmentDirectional.bottomStart,
        visualDensity: VisualDensity.comfortable,
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 12.0.w),
        ),
      ),
      expandedInsets: EdgeInsets.symmetric(horizontal: 0.0.w, vertical: 0.0.h),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0.sp),
          borderSide: BorderSide(
            width: 1.5.w,
            color: const Color(0xffD1D5DB),
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
        constraints: BoxConstraints.loose(
          Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.5.h),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0.sp),
          borderSide: BorderSide(
            width: 1.5.w,
            color: const Color(0xffD1D5DB),
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0.sp),
          borderSide: BorderSide(
            width: 1.5.w,
            color: const Color(0xffD1D5DB),
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
      ),
      onSelected: (value) {
        widget.profileSecurityVerificationControllerCubit.ChangingVerificationMethod(value);
      },
      textStyle: TextStyle(
        color: const Color(0xff111827),
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
        fontFamily: TextFontFamily,
      ),
    );
  }
}
