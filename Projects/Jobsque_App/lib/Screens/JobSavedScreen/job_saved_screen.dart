// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Base_Home/Controller/base_cubit.dart';
import 'package:jobsque_app/Screens/Base_Home/base__home.dart';
import 'package:jobsque_app/Screens/JobSavedScreen/UI/Views/Job_Saved_Main_View.dart';

import 'Controller/job_saved_controller_bloc.dart';

class JobSavedScreen extends StatefulWidget {
  int? baseIndex;

  JobSavedScreen({ super.key , required this.baseIndex});

  @override
  State<JobSavedScreen> createState() => _JobSavedScreenState();
}

class _JobSavedScreenState extends State<JobSavedScreen> {
  JobSavedControllerBloc? jobSavedBlocController;

  @override
  void initState() {
    jobSavedBlocController = JobSavedControllerBloc()..add(JobSavedFetchingAPIDataEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => jobSavedBlocController!),
        BlocProvider(create: (context) => BaseCubit(context , widget.baseIndex!)),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          bottomNavigationBar: BaseHome(baseIndex: widget.baseIndex!),
          body: JobSavedMainView(jobSavedBlocController: jobSavedBlocController!),
        ),
      ),
    );
  }
}