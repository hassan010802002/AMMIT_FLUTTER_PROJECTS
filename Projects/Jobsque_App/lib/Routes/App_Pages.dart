// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/applied_jobs_screen.dart';
import 'package:jobsque_app/Screens/EditProfileScreen/edit_profile_screen.dart';
import 'package:jobsque_app/Screens/HelpCenterScreen/help_center_screen.dart';
import 'package:jobsque_app/Screens/Home_Screen/home__screen.dart';
import 'package:jobsque_app/Screens/JobSavedScreen/job_saved_screen.dart';
import 'package:jobsque_app/Screens/Location_Screen/location_screen.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/login__screen.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/main_profile_screen.dart';
import 'package:jobsque_app/Screens/MessagesScreen/messages_screen.dart';
import 'package:jobsque_app/Screens/NotificationScreen/notification_screen.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/OnBoardingScreen.dart';
import 'package:jobsque_app/Screens/PortfolioScreen/portfolio_screen.dart';
import 'package:jobsque_app/Screens/PrivacyPolicyScreen/privacy_policy_screen.dart';
import 'package:jobsque_app/Screens/ProfileLanguageScreen/profile_language_screen.dart';
import 'package:jobsque_app/Screens/ProfileNotificationScreen/profile_notification_screen.dart';
import 'package:jobsque_app/Screens/ProfileSecurityChangePasswordScreen/profile_security_change_password_screen.dart';
import 'package:jobsque_app/Screens/ProfileSecurityEmailAddressScreen/profile_security_email_address_screen.dart';
import 'package:jobsque_app/Screens/ProfileSecurityPhoneNumberScreen/profile_security_phone_number_screen.dart';
import 'package:jobsque_app/Screens/ProfileSecurityScreen/profile_security_screen.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/profile_security_verfication_screen.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/reset_password_screen.dart';
import 'package:jobsque_app/Screens/SearchScreen/search_screen.dart';
import 'package:jobsque_app/Screens/Success_Screen/success__screen.dart';
import 'package:jobsque_app/Screens/TermsConditionsScreen/terms_condition_screen.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/work_type_screen.dart';

import '../Screens/Registration_Screen/registration__screen.dart';

class AppPages {
  static Map<String, Widget Function(BuildContext)> pages = {
    AppRoutes.onBoardingScreen: (p0) => const OnBoardingScreen(),
    AppRoutes.registrationScreen: (p0) => const Registration_Screen(),
    AppRoutes.workTypeScreen: (p0) => const WorkTypeScreen(),
    AppRoutes.locationScreen: (p0) => const LocationScreen(),
    AppRoutes.successScreen: (p0) => const SuccessScreen(),
    AppRoutes.loginScreen: (p0) => const LogIn_Screen(),
    AppRoutes.homeScreen: (p0) => HomeScreen(baseIndex: 0),
    AppRoutes.searchScreen: (p0) => const SearchScreen(),
    AppRoutes.notificationScreen: (p0) => const NotificationScreen(),
    AppRoutes.messagesScreen: (p0) => MessagesScreen(baseIndex: 1),
    AppRoutes.appliedJobsScreen: (p0) => const AppliedJobsScreen(baseIndex: 2),
    AppRoutes.jobSavedScreen: (p0) => JobSavedScreen(baseIndex: 3),
    AppRoutes.mainProfileScreen: (p0) => MainProfileScreen(baseIndex: 4),
    AppRoutes.editProfileScreen: (p0) => const EditProfileScreen(),
    AppRoutes.portfolioScreen: (p0) => const PortfolioScreen(),
    AppRoutes.profileLanguageScreen: (p0) => const ProfileLanguageScreen(),
    AppRoutes.profileNotificationScreen: (p0) => const ProfileNotificationScreen(),
    AppRoutes.profileSecurityScreen: (p0) => const ProfileSecurityScreen(),
    AppRoutes.termsConditionsScreen: (p0) => const TermsConditionsScreen(),
    AppRoutes.helpCenterScreen: (p0) => const HelpCenterScreen(),
    AppRoutes.privacyPolicyScreen: (p0) => const PrivacyPolicyScreen(),
    AppRoutes.profileSecurityEmailAddressScreen: (p0) => const ProfileSecurityEmailAddressScreen(),
    AppRoutes.profileSecurityPhoneNumberScreen: (p0) => const ProfileSecurityPhoneNumberScreen(),
    AppRoutes.profileSecurityChangePasswordScreen: (p0) => const ProfileSecurityChangePasswordScreen(),
    AppRoutes.profileSecurityVerificationScreen: (p0) => const ProfileSecurityVerificationScreen(),
    AppRoutes.resetPasswordScreen: (p0) => const ResetPasswordScreen(),
  };
}
