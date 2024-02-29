// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ProfileSecurityEmailAddressScreen/UI/Widgets/ProfileSecurityEmailAddressSaveButton/profile_security_email_address_save_button.dart';
import 'package:jobsque_app/Screens/ProfileSecurityEmailAddressScreen/UI/Widgets/ProfileSecurityEmailAddressText1/profile_security_email_address_text1.dart';
import 'package:jobsque_app/Screens/ProfileSecurityEmailAddressScreen/UI/Widgets/ProfileSecurityEmailAddressTextField/profile_security_email_address_text_field.dart';
import 'package:jobsque_app/Screens/ProfileSecurityEmailAddressScreen/UI/Widgets/ProfileSecurityEmailAddressTitle/profile_security_email_address_title.dart';
import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Controller/profile_security_email_address_controller_cubit.dart';

class ProfileSecurityEmailAddressMainView extends StatefulWidget {
  final ProfileSecurityEmailAddressControllerCubit profileSecurityEmailAddressControllerCubit;

  const ProfileSecurityEmailAddressMainView({super.key, required this.profileSecurityEmailAddressControllerCubit});

  @override
  State<ProfileSecurityEmailAddressMainView> createState() => _ProfileSecurityEmailAddressMainViewState();
}

class _ProfileSecurityEmailAddressMainViewState extends State<ProfileSecurityEmailAddressMainView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonWidget(),
                  const ProfileSecurityEmailAddressTitle(),
                  const SizedBox(),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              const ProfileSecurityEmailAddressText1(),
              SizedBox(
                height: 8.0.h,
              ),
              const ProfileSecurityEmailAddressTextField(),
            ],
          ),
          const ProfileSecurityEmailAddressSaveButton(),
        ],
      ),
    );
  }
}
