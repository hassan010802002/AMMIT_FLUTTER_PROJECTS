import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ChatScreen/chat_screen.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/job_application_screen.dart';
import 'package:jobsque_app/Screens/Splash_Screen/splash__screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'Models/Jobs_Model/JobsModel.dart';
import 'Routes/App_Pages.dart';
import 'Routes/App_Routes.dart';

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
        home:MySplash(),
      ),
    );
  }
}