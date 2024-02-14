// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Base_Home/Controller/base_cubit.dart';
import 'package:jobsque_app/Screens/Base_Home/UI/Views/BottomNavBar_View/bottom_nav_bar_view.dart';

class BaseHome extends StatefulWidget {
  int? baseIndex ;

  BaseHome({ super.key , required this.baseIndex});

  @override
  State<BaseHome> createState() => _BaseHomeState();
}

class _BaseHomeState extends State<BaseHome> {

  @override
  Widget build(BuildContext context) {
  BaseCubit cubit = BaseCubit(context , widget.baseIndex!);
    return BlocProvider(
      create: (context) => cubit,
      child: BottomNavBarView(cubit: cubit ),
    );
  }
}


