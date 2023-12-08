import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Controller/main_cubit.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Pages.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/Location_Screen/location_screen.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/login__screen.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/OnBoardingScreen.dart';
import 'package:jobsque_app/Screens/Registration_Screen/registration__screen.dart';
import 'package:jobsque_app/Screens/Splash_Screen/splash__screen.dart';
import 'package:jobsque_app/Screens/Success_Screen/success__screen.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/work_type_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
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
        home: BlocProvider(
          create: (context) => MainCubit(),
          child: LogIn_Screen(),
        ),
      ),
    );
  }
}
