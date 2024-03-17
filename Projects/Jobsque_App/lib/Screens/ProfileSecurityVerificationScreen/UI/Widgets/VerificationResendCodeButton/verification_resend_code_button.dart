// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/Controller/profile_security_verification_controller_cubit.dart';

import '../../../../../Config/AppConfig.dart';

class VerificationResendCodeButton extends StatefulWidget {
  final ProfileSecurityVerificationControllerCubit profileSecurityVerificationControllerCubit;

  const VerificationResendCodeButton({super.key, required this.profileSecurityVerificationControllerCubit});

  @override
  _VerificationResendCodeButtonState createState() => _VerificationResendCodeButtonState();
}

class _VerificationResendCodeButtonState extends State<VerificationResendCodeButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSecurityVerificationControllerCubit, ProfileSecurityVerificationControllerState>(
      bloc: widget.profileSecurityVerificationControllerCubit,
      builder: (context, state) {
        return TextButton(
          style: ButtonStyle(
            shape: widget.profileSecurityVerificationControllerCubit.isSendingPinCode
                ? null
                : MaterialStatePropertyAll(
                    LinearBorder(
                      side: BorderSide(
                        width: 1.2.w,
                        strokeAlign: BorderSide.strokeAlignInside,
                        color: const Color(0xff3366ff),
                      ),
                      bottom: const LinearBorderEdge(
                        size: 1.0,
                        alignment: 0,
                      ),
                    ),
                  ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            alignment: Alignment.centerLeft,
            padding: const MaterialStatePropertyAll(EdgeInsets.zero),
          ),
          isSemanticButton: true,
          onPressed: () {
            widget.profileSecurityVerificationControllerCubit.ReSendingPinCodeCounter();
          },
          child: widget.profileSecurityVerificationControllerCubit.isSendingPinCode
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Resend code ',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff9CA3AF),
                        fontFamily: TextFontFamily,
                      ),
                    ),
                    Text(
                      '${widget.profileSecurityVerificationControllerCubit.pinCodeTimer}',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff3366ff),
                        fontFamily: TextFontFamily,
                      ),
                    ),
                  ],
                )
              : Text(
                  'Resend code',
                  softWrap: true,
                  style: TextStyle(
                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff3366ff),
                    fontFamily: TextFontFamily,
                  ),
                ),
        );
      },
    );
  }
}
