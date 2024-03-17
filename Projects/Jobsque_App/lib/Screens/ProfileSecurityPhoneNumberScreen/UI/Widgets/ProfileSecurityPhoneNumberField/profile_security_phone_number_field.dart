// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:jobsque_app/Components/CustomPhoneField/CustomPhoneField.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityPhoneNumberField extends StatefulWidget {
  const ProfileSecurityPhoneNumberField({super.key});

  @override
  _ProfileSecurityPhoneNumberFieldState createState() => _ProfileSecurityPhoneNumberFieldState();
}

class _ProfileSecurityPhoneNumberFieldState extends State<ProfileSecurityPhoneNumberField> {
  @override
  Widget build(BuildContext context) {
    return CustomPhoneField(controller: TextEditingController());
  }
}
