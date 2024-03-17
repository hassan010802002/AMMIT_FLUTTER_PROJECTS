// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/Base_Home/Constants/BaseHomeConsts.dart';
import 'package:octo_image/octo_image.dart';

import '../../../Controller/base_cubit.dart';

class SavedNavBarItem extends StatefulWidget {
  BaseCubit cubit;

  SavedNavBarItem({super.key, required this.cubit});

  @override
  _SavedNavBarItemState createState() => _SavedNavBarItemState();
}

class _SavedNavBarItemState extends State<SavedNavBarItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseCubit, BaseState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return OctoImage(
          image: state is SavedBase
              ? const AssetImage(BaseHomeConsts.image9)
              : const AssetImage(BaseHomeConsts.image10),
          fit: BoxFit.contain,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
        );
      },
    );
  }
}
