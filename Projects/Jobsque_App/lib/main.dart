import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Models/Jobs_Model/JobsModel.dart';
import 'package:jobsque_app/Routes/App_Pages.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/ChatScreen/chat_screen.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/job_application_screen.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/login__screen.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/main_profile_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper.init();
  SharedPreferences localChache = await CacheHelper.returningPreference();
  if (ApiTokenKey == null && localChache.containsKey(MainTokenKey)) {
    ApiTokenKey = localChache.get(MainTokenKey) as String?;
    print("My API Token is: $ApiTokenKey");
  }
  if (registrationToken == null && localChache.containsKey(registrationTokenKey)) {
    registrationToken = localChache.get(registrationTokenKey) as String?;
    print("My Registration Token is: $registrationToken");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)!),
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        initialRoute: AppRoutes.splashScreen,
        routes: AppPages.pages,
        onGenerateRoute: (settings) {
          if (settings.name == AppRoutes.applicationScreen ||
              settings.name == AppRoutes.applicationSearchScreen ||
              settings.name == AppRoutes.applicationSavedScreen ||
              settings.name == AppRoutes.appliedJobsApplicationScreen) {
            final screenArgs = settings.arguments as Data;
            return MaterialPageRoute(
              builder: (context) => JobApplicationScreen(
                jobDetailsData: screenArgs,
              ),
            );
          }
          if (settings.name == AppRoutes.chatScreen) {
            final screenArgs = settings.arguments as Map<String, String>;
            return MaterialPageRoute(builder: (context) => ChatScreen(screenData: screenArgs));
          }
          return null;
        },
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        ),
        debugShowCheckedModeBanner: false,
        home: LogIn_Screen(),
      ),
    );
  }
}
