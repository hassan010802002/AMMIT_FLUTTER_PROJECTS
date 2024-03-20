// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/Custom_Button/Custom_Button.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Controller/registration_cubit.dart';


class RegisterButton extends StatefulWidget {
  final RegistrationCubit cubit;

  const RegisterButton({required this.cubit, Key? key}) : super(key: key);

  @override
  _RegisterButtonState createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return CustomButton(
          style: RegistrationConsts.style7(context,state),
          buttonText: RegistrationConsts.text7,
          onPressed: () {
            widget.cubit.Registration(context);
          },
          backgroundColor:
              state is UserEntranceState || state is CorrectUserPasswordLength || state is WrongUserPasswordLength || state is FinalRegistrationState
                  ? const MaterialStatePropertyAll(RegistrationConsts.color3)
                  : const MaterialStatePropertyAll(RegistrationConsts.color1),
          fixedSize: MaterialStatePropertyAll(
            Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!.w, MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h),
          ),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0.sp))),
        );
      },
    );
  }
}
