import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/Splash_Screen/Controller/splash_controller_cubit.dart';
import 'package:jobsque_app/Screens/Splash_Screen/UI/Views/Splash_Main_View.dart';

class MySplash extends StatefulWidget {
  final SplashControllerCubit cubit = SplashControllerCubit();

  MySplash({ super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {

  @override
  void initState() {
    widget.cubit.MainScreenNavigation(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        primary: true,
        body: BlocProvider(
          create: (context) => widget.cubit,
          child: Splash_Main_View(cubit: widget.cubit),
        ),
      ),
    );
  }
}


