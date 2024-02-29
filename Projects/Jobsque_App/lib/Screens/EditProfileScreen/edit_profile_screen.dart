// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Base_Home/Controller/base_cubit.dart';
import 'package:jobsque_app/Screens/Base_Home/base__home.dart';
import 'package:jobsque_app/Screens/EditProfileScreen/Controller/edit_profile_controller_bloc.dart';
import 'package:jobsque_app/Screens/EditProfileScreen/UI/Views/EditProfileMainView.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/Controller/main_profile_controller_bloc.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/UI/Views/ProfileMainView.dart';

class EditProfileScreen extends StatefulWidget {

  const EditProfileScreen({ super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  EditProfileControllerBloc? editProfileControllerBloc;

  @override
  void initState() {
    editProfileControllerBloc = EditProfileControllerBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => editProfileControllerBloc!,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: EditProfileMainView(editProfileControllerBloc: editProfileControllerBloc!),
        ),
      ),
    );
  }
}


