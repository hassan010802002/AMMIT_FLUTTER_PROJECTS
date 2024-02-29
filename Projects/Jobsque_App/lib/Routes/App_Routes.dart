// ignore_for_file: file_names

class AppRoutes {
  static const splashScreen = "/";
  static const onBoardingScreen = "/onBoarding";
  static const registrationScreen = "/register";
  static const workTypeScreen = "/workType";
  static const locationScreen = "/location";
  static const successScreen = "/success";
  static const loginScreen = "/login";
  static const resetPasswordScreen = "$loginScreen/resetPassword";
  static const homeScreen = "/home";
  static const searchScreen = "/home/search";
  static const applicationScreen = "/home/apply";
  static const applicationSearchScreen = "/home/search/apply";
  static const jobSavedScreen = "/saved";
  static const applicationSavedScreen = "/saved/apply";
  static const notificationScreen = "$homeScreen/notification";
  static const messagesScreen = "/messages";
  static const chatScreen = "$messagesScreen/chat";
  static const appliedJobsScreen = "/applied";
  static const appliedJobsApplicationScreen = "/applied/apply";
  static const mainProfileScreen = "/mainProfile";
  static const editProfileScreen = "$mainProfileScreen/editProfile";
  static const portfolioScreen = "$mainProfileScreen/portfolio";
  static const profileLanguageScreen = "$mainProfileScreen/language";
  static const profileNotificationScreen = "$mainProfileScreen/notification";
  static const profileSecurityScreen = "$mainProfileScreen/security";
  static const termsConditionsScreen = "$mainProfileScreen/termsConditions";
  static const helpCenterScreen = "$mainProfileScreen/helpCenter";
  static const privacyPolicyScreen = "$mainProfileScreen/privacyPolicy";
  static const profileSecurityEmailAddressScreen = "$profileSecurityScreen/emailAddress";
  static const profileSecurityPhoneNumberScreen = "$profileSecurityScreen/phoneNumber";
}