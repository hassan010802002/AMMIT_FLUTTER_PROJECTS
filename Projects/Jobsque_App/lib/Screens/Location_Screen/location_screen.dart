// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Location_Screen/Controller/location_cubit.dart';
import 'package:jobsque_app/Screens/Location_Screen/UI/Views/location_main_view.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  LocationCubit? cubit;

  @override
  void initState() {
    cubit = LocationCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<LocationCubit, LocationState>(
          bloc: cubit!,
          builder: (context, state) {
            return LocationMainView(
              cubit: cubit!,
            );
          },
        ),
      ),
    );
  }
}
