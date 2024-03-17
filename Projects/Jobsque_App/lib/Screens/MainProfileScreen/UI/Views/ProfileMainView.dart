// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/CustomProfileOtherButton/CustomProfileOtherButton.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Widgets/MainProfileAboutEditRow/main_profile_about_edit_row.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Widgets/MainProfileAboutText/main_profile_about_text.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Widgets/MainProfileBioTextWidget/main_profile_bio_text_widget.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Widgets/MainProfileDetalsConatinerWidget/main_profile_detals_conatiner_widget.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Widgets/MainProfileGeneralDividerContainer/main_profile_general_divider_container.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Widgets/MainProfileImageWidget/main_profile_image_widget.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Widgets/MainProfileLogoutIconButton/main_profile_logout_icon_button.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Widgets/MainProfileOtherDividerContainer/main_profile_other_divider_container.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Widgets/MainProfileTitleTextWidget/main_profile_title_text_widget.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Widgets/MainProfileUserTitleWidget/main_profile_user_title_widget.dart';

import '../../../../Components/CustomProfileGeneralButton/CustomProfileGeneralButton.dart';
import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Controller/main_profile_controller_bloc.dart';

class ProfileMainView extends StatefulWidget {
  final MainProfileControllerBloc mainProfileControllerBloc;

  const ProfileMainView({super.key, required this.mainProfileControllerBloc});

  @override
  State<ProfileMainView> createState() => _ProfileMainViewState();
}

class _ProfileMainViewState extends State<ProfileMainView> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        primary: true,
        child: Stack(
          children: [
            Container(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 4.2.h,
              color: const Color(0xffD6E4FF),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BackButtonWidget(),
                          const MainProfileTitleTextWidget(),
                          MainProfileLogoutIconButton(mainProfileControllerBloc: widget.mainProfileControllerBloc),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 10.0.h,
                      ),
                      MainProfileImageWidget(mainProfileControllerBloc: widget.mainProfileControllerBloc),
                      SizedBox(
                        height: 10.0.h,
                      ),
                      MainProfileUserTitleWidget(mainProfileControllerBloc: widget.mainProfileControllerBloc),
                      SizedBox(
                        height: 5.0.h,
                      ),
                      MainProfileBioTextWidget(mainProfileControllerBloc: widget.mainProfileControllerBloc),
                      SizedBox(
                        height: 25.0.h,
                      ),
                      const MainProfileDetalsConatinerWidget(),
                      SizedBox(
                        height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 28.0.h,
                      ),
                      const MainProfileAboutEditRow(),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      const MainProfileAboutText(),
                    ],
                  ),
                ),
                const MainProfileGeneralDividerContainer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
                  child: Column(
                    children: [
                      CustomProfileGeneralButton(
                        "Edit Profile",
                        iconAssetPath: 'Assets/Images/profile.png',
                        onPressed: () {
                          NavigatorHelper(context, AppRoutes.editProfileScreen);
                        },
                      ),
                      Divider(
                        thickness: 1.5.h,
                        color: const Color(0xffE5E7EB),
                      ),
                      CustomProfileGeneralButton(
                        "Portfolio",
                        iconAssetPath: 'Assets/Images/folder_favorite.png',
                        onPressed: () {
                          NavigatorHelper(context, AppRoutes.portfolioScreen);
                        },
                      ),
                      Divider(
                        thickness: 1.5.h,
                        color: const Color(0xffE5E7EB),
                      ),
                      CustomProfileGeneralButton(
                        "Language",
                        iconAssetPath: 'Assets/Images/global.png',
                        onPressed: () {
                          NavigatorHelper(context, AppRoutes.profileLanguageScreen);
                        },
                      ),
                      Divider(
                        thickness: 1.5.h,
                        color: const Color(0xffE5E7EB),
                      ),
                      CustomProfileGeneralButton(
                        "Notification",
                        iconAssetPath: 'Assets/Images/notification.png',
                        onPressed: () {
                          NavigatorHelper(context, AppRoutes.profileNotificationScreen);
                        },
                      ),
                      Divider(
                        thickness: 1.5.h,
                        color: const Color(0xffE5E7EB),
                      ),
                      CustomProfileGeneralButton(
                        "Login and security",
                        iconAssetPath: 'Assets/Images/lock.png',
                        onPressed: () {
                          NavigatorHelper(context, AppRoutes.profileSecurityScreen);
                        },
                      ),
                    ],
                  ),
                ),
                const MainProfileOtherDividerContainer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
                  child: Column(
                    children: [
                      CustomProfileOtherButton(
                        "Accessibility", onPressed: () {  },
                      ),
                      Divider(
                        thickness: 1.5.h,
                        color: const Color(0xffE5E7EB),
                      ),
                      CustomProfileOtherButton(
                        "Help Center", onPressed: () {
                          NavigatorHelper(context, AppRoutes.helpCenterScreen);
                      },
                      ),
                      Divider(
                        thickness: 1.5.h,
                        color: const Color(0xffE5E7EB),
                      ),
                      CustomProfileOtherButton(
                        "Terms & Conditions", onPressed: () {
                          NavigatorHelper(context, AppRoutes.termsConditionsScreen);
                      },
                      ),
                      Divider(
                        thickness: 1.5.h,
                        color: const Color(0xffE5E7EB),
                      ),
                      CustomProfileOtherButton(
                        "Privacy Policy", onPressed: () {
                          NavigatorHelper(context, AppRoutes.privacyPolicyScreen);
                      },
                      ),
                      Divider(
                        thickness: 1.5.h,
                        color: const Color(0xffE5E7EB),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
