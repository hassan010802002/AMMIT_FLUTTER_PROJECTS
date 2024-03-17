// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:jobsque_app/Components/CustomPhoneField/CustomPhoneField.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/Controllers/Application_Controller/application_cubit.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class JobApplyPhoneField extends StatefulWidget {
  final ApplicationCubit applicationCubitController;

  const JobApplyPhoneField({super.key, required this.applicationCubitController});

  @override
  _JobApplyPhoneFieldState createState() => _JobApplyPhoneFieldState();
}

class _JobApplyPhoneFieldState extends State<JobApplyPhoneField> {
  @override
  Widget build(BuildContext context) {
    return CustomPhoneField(controller: widget.applicationCubitController.phoneController);
  }
}
