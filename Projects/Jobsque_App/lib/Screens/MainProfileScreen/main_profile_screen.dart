// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Base_Home/Controller/base_cubit.dart';
import 'package:jobsque_app/Screens/Base_Home/base__home.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/Controller/main_profile_controller_bloc.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Views/ProfileMainView.dart';

class MainProfileScreen extends StatefulWidget {
  int? baseIndex;

  MainProfileScreen({ super.key , required this.baseIndex});

  @override
  State<MainProfileScreen> createState() => _MainProfileScreenState();
}

class _MainProfileScreenState extends State<MainProfileScreen> {
  MainProfileControllerBloc? mainProfileControllerBloc;

  @override
  void initState() {
    mainProfileControllerBloc = MainProfileControllerBloc()..add(FetchingProfileApiData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => mainProfileControllerBloc!),
        BlocProvider(create: (context) => BaseCubit(context , widget.baseIndex!)),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          bottomNavigationBar: BaseHome(baseIndex: widget.baseIndex!),
          body: ProfileMainView(mainProfileControllerBloc: mainProfileControllerBloc!),
        ),
      ),
    );
  }
}


