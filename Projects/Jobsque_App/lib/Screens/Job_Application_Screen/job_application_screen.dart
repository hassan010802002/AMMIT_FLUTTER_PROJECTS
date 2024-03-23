// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Models/Jobs_Model/JobsModel.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/Application_Controller/application_cubit.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/Details_Controller/details_cubit.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/job_application_cubit.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Views/job_application_main_view.dart';

class JobApplicationScreen extends StatefulWidget {
  final Data? jobDetailsData;
  const JobApplicationScreen({super.key, required this.jobDetailsData});

  @override
  _JobApplicationScreenState createState() => _JobApplicationScreenState();
}

class _JobApplicationScreenState extends State<JobApplicationScreen> {
  JobApplicationCubit? mainCubitController;
  ApplicationCubit? applicationCubitController;

  @override
  void initState() {
    mainCubitController = JobApplicationCubit();
    applicationCubitController = ApplicationCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final DetailsCubit detailsCubitController = DetailsCubit(currentJobDetailsData: widget.jobDetailsData);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => mainCubitController!,
        ),
        BlocProvider(
          create: (context) => applicationCubitController!,
        ),
        BlocProvider(
          create: (context) => detailsCubitController,
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: JobApplicationMainView(
            mainCubitController: mainCubitController!,
            applicationCubitController: applicationCubitController!,
            detailsCubitController: detailsCubitController,
          ),
        ),
      ),
    );
  }
}
