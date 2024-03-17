// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../../../Components/CustomPhoneField/CustomPhoneField.dart';
import '../../../Controller/edit_profile_controller_bloc.dart';

class EditProfilePhoneFieldWidget extends StatefulWidget {
  final EditProfileControllerBloc editProfileControllerBloc;

  const EditProfilePhoneFieldWidget({super.key, required this.editProfileControllerBloc});

  @override
  _EditProfilePhoneFieldWidgetState createState() => _EditProfilePhoneFieldWidgetState();
}

class _EditProfilePhoneFieldWidgetState extends State<EditProfilePhoneFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomPhoneField(controller: widget.editProfileControllerBloc.phoneEditingController,);
  }
}
