// ignore_for_file: camel_case_types, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/CustomProfileOtherButton/CustomProfileOtherButton.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/ProfileSecurityScreen/UI/Widgets/AccountAccessDividerContainer/account_access_divider_container.dart';
import 'package:jobsque_app/Screens/ProfileSecurityScreen/UI/Widgets/ProfileSecurityScreenTitle/profile_security_screen_title.dart';

import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Controller/profile_security_controller_cubit.dart';

class ProfileSecurityMainView extends StatefulWidget {
  final ProfileSecurityControllerCubit profileSecurityControllerCubit;

  const ProfileSecurityMainView({super.key, required this.profileSecurityControllerCubit});

  @override
  State<ProfileSecurityMainView> createState() => _ProfileSecurityMainViewState();
}

class _ProfileSecurityMainViewState extends State<ProfileSecurityMainView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButtonWidget(),
              const ProfileSecurityScreenTitle(),
              const SizedBox(),
            ],
          ),
        ),
        SizedBox(
          height: 30.0.h,
        ),
        const AccountAccessDividerContainer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
          child: Column(
            children: [
              CustomProfileOtherButton(
                "Email address",
                onPressed: () {
                  NavigatorHelper(context, AppRoutes.profileSecurityEmailAddressScreen);
                },
              ),
              Divider(
                thickness: 1.5.h,
                color: const Color(0xffE5E7EB),
              ),
              CustomProfileOtherButton(
                "Phone number",
                onPressed: () {
                  NavigatorHelper(context, AppRoutes.profileSecurityPhoneNumberScreen);
                },
              ),
              Divider(
                thickness: 1.5.h,
                color: const Color(0xffE5E7EB),
              ),
              CustomProfileOtherButton(
                "Change password",
                onPressed: () {
                  NavigatorHelper(context, AppRoutes.profileSecurityChangePasswordScreen);
                },
              ),
              Divider(
                thickness: 1.5.h,
                color: const Color(0xffE5E7EB),
              ),
              CustomProfileOtherButton(
                "Two-step verification",
                onPressed: () {},
              ),
              Divider(
                thickness: 1.5.h,
                color: const Color(0xffE5E7EB),
              ),
              CustomProfileOtherButton(
                "Face ID",
                onPressed: () {},
              ),
              Divider(
                thickness: 1.5.h,
                color: const Color(0xffE5E7EB),
              ),
            ],
          ),
        )
      ],
    );
  }
}
