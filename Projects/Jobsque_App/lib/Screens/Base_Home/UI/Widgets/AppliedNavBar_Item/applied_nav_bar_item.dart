// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octo_image/octo_image.dart';

import '../../../Controller/base_cubit.dart';

class AppliedNavBarItem extends StatefulWidget {
  BaseCubit cubit;

  AppliedNavBarItem({Key? key, required this.cubit}) : super(key: key);

  @override
  _AppliedNavBarItemState createState() => _AppliedNavBarItemState();
}

class _AppliedNavBarItemState extends State<AppliedNavBarItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseCubit, BaseState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return OctoImage(
          image: state is ApplicationBase
              ? const AssetImage("Assets/Images/briefcase2.png")
              : const AssetImage("Assets/Images/briefcase.png"),
          fit: BoxFit.contain,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
        );
      },
    );
  }
}
