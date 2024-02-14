// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/Controller/applied_jobs_controller_bloc.dart';
import 'package:jobsque_app/Screens/AppliedJobsScreen/UI/Views/Applied_Jobs_Main_View.dart';
import 'package:jobsque_app/Screens/Base_Home/Controller/base_cubit.dart';
import 'package:jobsque_app/Screens/Base_Home/base__home.dart';

class AppliedJobsScreen extends StatefulWidget {
  final int baseIndex;

  const AppliedJobsScreen({ super.key, required this.baseIndex, });

  @override
  State<AppliedJobsScreen> createState() => _AppliedJobsScreenState();
}

class _AppliedJobsScreenState extends State<AppliedJobsScreen> {
  AppliedJobsControllerBloc? appliedJobsControllerBloc;

  @override
  void initState() {
    appliedJobsControllerBloc = AppliedJobsControllerBloc()..add(AppliedJobsFetchingApiData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BaseCubit(context,2)),
        BlocProvider(create: (context) => appliedJobsControllerBloc!),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          bottomNavigationBar: BaseHome(baseIndex: widget.baseIndex),
          body: AppliedJobsMainView(appliedJobsControllerBloc: appliedJobsControllerBloc!),
        ),
      ),
    );
  }
}