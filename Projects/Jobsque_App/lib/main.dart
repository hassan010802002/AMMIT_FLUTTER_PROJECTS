import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Pages.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/Base_Home/Controller/base_cubit.dart';
import 'package:jobsque_app/Screens/Home_Screen/Controller/home_bloc.dart';
import 'package:jobsque_app/Screens/Home_Screen/home__screen.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/job_application_cubit.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/job_application_screen.dart';
import 'package:jobsque_app/Screens/Location_Screen/Controller/location_cubit.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/Controller/log_in_cubit.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/Controller/on_boarding_cubit.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Controller/registration_cubit.dart';
import 'package:jobsque_app/Screens/SearchScreen/Controller/search_bloc.dart';
import 'package:jobsque_app/Screens/Splash_Screen/Controller/splash_controller_cubit.dart';
import 'package:jobsque_app/Screens/Success_Screen/Controller/success_cubit.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/Controller/work_type_cubit.dart';
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
          final screenArgs = settings.arguments as Map<String, dynamic>;
          if (settings.name == AppRoutes.applicationScreen ) {
            return MaterialPageRoute(
              builder: (context) => JobApplicationScreen(
                currentJobIndex: screenArgs["jobIndex"],
                homeController: screenArgs["callerBloc"],
              ),
            );
          }
          if (settings.name == AppRoutes.applicationSearchScreen) {
            return MaterialPageRoute(
              builder: (context) => JobApplicationScreen(
                currentJobIndex: screenArgs["jobIndex"],
                searchController: screenArgs["callerBloc"],
              ),
            );
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
        home: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => SplashControllerCubit()),
            BlocProvider(create: (context) => OnBoardingCubit()),
            BlocProvider(create: (context) => RegistrationCubit()),
            BlocProvider(create: (context) => WorkTypeCubit()),
            BlocProvider(create: (context) => LocationCubit()),
            BlocProvider(create: (context) => LogInCubit()),
            BlocProvider(create: (context) => SuccessCubit()),
            BlocProvider(create: (context) => BaseCubit()),
            BlocProvider(create: (context) => HomeBloc()),
            BlocProvider(create: (context) => SearchBloc()),
            BlocProvider(create: (context) => JobApplicationCubit()),
          ],
          child: HomeScreen(baseIndex: 0),
        ),
      ),
    );
  }
}
