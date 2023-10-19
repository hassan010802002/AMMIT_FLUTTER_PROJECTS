import 'package:chatbox_project/Main_Controller.dart';
import 'package:chatbox_project/Routes/MyPages/MyPages.dart';
import 'package:chatbox_project/Screens/Base_Screen/Base_Screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      minTextAdapt: true,
      builder: (context, child) => GetMaterialApp(
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        ),
        initialRoute: MyPages.splashScreen,
        debugShowCheckedModeBanner: false,
        getPages: Main_Controller().routes,
        home: const MyBase(),
      ),
    );
  }
}
