// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Home_Screen/Controller/home_bloc.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/Application_Controller/application_cubit.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/Complete_Application_Controller/complete_application_cubit.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/Details_Controller/details_cubit.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/job_application_cubit.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Views/job_application_main_view.dart';
import 'package:jobsque_app/Screens/SearchScreen/Controller/search_bloc.dart';

class JobApplicationScreen extends StatefulWidget {
  final int? currentJobIndex;
  final HomeBloc? homeController;
  final SearchBloc? searchController;
  final JobApplicationCubit mainCubitController = JobApplicationCubit();
  final ApplicationCubit applicationCubitController = ApplicationCubit();
  final CompleteApplicationCubit completeApplicationCubitController = CompleteApplicationCubit();

  JobApplicationScreen({Key? key, this.homeController, this.searchController, this.currentJobIndex = 0}) : super(key: key);

  @override
  _JobApplicationScreenState createState() => _JobApplicationScreenState();
}

class _JobApplicationScreenState extends State<JobApplicationScreen> {

  @override
  Widget build(BuildContext context) {
    final DetailsCubit detailsCubitController = DetailsCubit(homeController: widget.homeController, searchController: widget.searchController);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => widget.mainCubitController,
        ),
        BlocProvider(
          create: (context) => widget.applicationCubitController,
        ),
        BlocProvider(
          create: (context) => widget.completeApplicationCubitController,
        ),
        BlocProvider(
          create: (context) => detailsCubitController,
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: JobApplicationMainView(
            currentJobIndex: widget.currentJobIndex,
            mainCubitController: widget.mainCubitController,
            applicationCubitController: widget.applicationCubitController,
            detailsCubitController: detailsCubitController,
            completeApplicationCubitController: widget.completeApplicationCubitController,
          ),
        ),
      ),
    );
  }
}
