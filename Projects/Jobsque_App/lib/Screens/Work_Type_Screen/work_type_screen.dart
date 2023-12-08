// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/Controller/work_type_cubit.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/UI/Views/work_type_main_view.dart';

class WorkTypeScreen extends StatefulWidget {
  final WorkTypeCubit cubit = WorkTypeCubit();

  WorkTypeScreen({Key? key}) : super(key: key);

  @override
  _WorkTypeScreenState createState() => _WorkTypeScreenState();
}

class _WorkTypeScreenState extends State<WorkTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocProvider(
          create: (context) => widget.cubit,
          child: WorkTypeMainView(cubit: widget.cubit),
        ),
      ),
    );
  }
}
