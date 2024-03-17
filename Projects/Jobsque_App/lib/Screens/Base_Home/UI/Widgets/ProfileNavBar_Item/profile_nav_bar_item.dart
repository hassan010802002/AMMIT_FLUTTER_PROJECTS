// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Base_Home/Constants/BaseHomeConsts.dart';
import 'package:jobsque_app/Screens/Base_Home/Controller/base_cubit.dart';
import 'package:octo_image/octo_image.dart';

class ProfileNavBarItem extends StatefulWidget {
  BaseCubit cubit;

  ProfileNavBarItem({Key? key, required this.cubit}) : super(key: key);

  @override
  _ProfileNavBarItemState createState() => _ProfileNavBarItemState();
}

class _ProfileNavBarItemState extends State<ProfileNavBarItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseCubit, BaseState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return OctoImage(
          image: state is ProfileBase
              ? const AssetImage(BaseHomeConsts.image7)
              : const AssetImage(BaseHomeConsts.image8),
          fit: BoxFit.contain,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
        );
      },
    );
  }
}
