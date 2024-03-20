// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jobsque_app/Components/CustomPhoneField/CustomPhoneField.dart';


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
