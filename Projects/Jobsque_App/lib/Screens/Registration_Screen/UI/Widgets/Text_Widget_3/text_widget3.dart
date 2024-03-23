// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Controller/registration_cubit.dart';

class TextWidget3 extends StatefulWidget {
  final RegistrationCubit cubit;

  const TextWidget3({super.key, required this.cubit});

  @override
  _TextWidget3State createState() => _TextWidget3State();
}

class _TextWidget3State extends State<TextWidget3> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return Text(
          RegistrationConsts.text11,
          style: RegistrationConsts.style11(context, state),
          textAlign: TextAlign.justify,
          softWrap: true,
        );
      },
    );
  }
}
