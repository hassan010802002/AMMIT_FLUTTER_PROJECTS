// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Controller/registration_cubit.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Views/Divider_View/divider_view.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Views/LogIn_View/log_in_view.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Views/SocialButtons_View/social_buttons_view.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Email_TextField_Widget/email_text_field_widget.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Password_TextField_Widget/password_text_field_widget.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Register_Button/register_button.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Text_Widget_1/text_widget1.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Text_Widget_2/text_widget2.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/Text_Widget_3/text_widget3.dart';
import 'package:jobsque_app/Screens/Registration_Screen/UI/Widgets/UserName_TextField_Widget/user_name_text_field_widget.dart';

class Registration_MainView extends StatefulWidget {
  final RegistrationCubit cubit;

  const Registration_MainView({super.key, required this.cubit});

  @override
  State<Registration_MainView> createState() => _Registration_MainView_State();
}

class _Registration_MainView_State extends State<Registration_MainView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0.w, left: 20.0.w, top: 30.0.h),
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextWidget1(),
            SizedBox(
              height: 5.0.h,
            ),
            const TextWidget2(),
            SizedBox(
              height: 50.0.h,
            ),
            SizedBox(
              width: MediaQuery_Size_Helper.MAX_WIDTH(context)!,
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
              child: UserNameTextFieldWidget(cubit: widget.cubit),
            ),
            SizedBox(
              height: 15.0.h,
            ),
            SizedBox(
              width: MediaQuery_Size_Helper.MAX_WIDTH(context)!,
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
              child: Email_TextField_Widget(cubit: widget.cubit),
            ),
            SizedBox(
              height: 15.0.h,
            ),
            SizedBox(
              width: MediaQuery_Size_Helper.MAX_WIDTH(context)!,
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
              child: Password_TextField_Widget(cubit: widget.cubit),
            ),
            SizedBox(
              height: 15.0.h,
            ),
            TextWidget3(cubit: widget.cubit),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 8.0.h,
            ),
            const LogInView(),
            SizedBox(
              height: 10.0.h,
            ),
            RegisterButton(cubit: widget.cubit),
            SizedBox(
              height: 30.0.h,
            ),
            const DividerView(),
            SizedBox(
              height: 30.0.h,
            ),
            const SocialButtonsView(),
          ],
        ),
      ),
    );
  }
}
