// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Base_Home/Controller/base_cubit.dart';
import 'package:jobsque_app/Screens/Base_Home/base__home.dart';
import 'package:jobsque_app/Screens/Home_Screen/Controller/home_bloc.dart';
import 'package:jobsque_app/Screens/Home_Screen/UI/Views/Home_Main_View.dart';

class HomeScreen extends StatefulWidget {
  int? baseIndex;

  HomeScreen({ super.key , required this.baseIndex});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc? blocController;
  @override
  void initState() {
    blocController = HomeBloc()..add(FetchApiDataEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => blocController!),
        BlocProvider(create: (context) => BaseCubit(context , widget.baseIndex!)),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          bottomNavigationBar: BaseHome(baseIndex: widget.baseIndex!),
          body: HomeMainView(controller: blocController!),
        ),
      ),
    );
  }
}


