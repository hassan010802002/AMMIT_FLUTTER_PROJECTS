// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octo_image/octo_image.dart';

import '../../../Controller/base_cubit.dart';

class HomeNavBarItem extends StatefulWidget {
  BaseCubit cubit;

  HomeNavBarItem({Key? key, required this.cubit}) : super(key: key);

  @override
  _HomeNavBarItemState createState() => _HomeNavBarItemState();
}

class _HomeNavBarItemState extends State<HomeNavBarItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseCubit, BaseState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return OctoImage(
          image: state is HomeBase
              ? const AssetImage("Assets/Images/home.png")
              : const AssetImage("Assets/Images/home1.png"),
          fit: BoxFit.contain,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
        );
      },
    );
  }
}
