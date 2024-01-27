// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octo_image/octo_image.dart';

import '../../../Controller/base_cubit.dart';

class MessagesNavBarItem extends StatefulWidget {
  BaseCubit cubit;

  MessagesNavBarItem({Key? key, required this.cubit}) : super(key: key);

  @override
  _MessagesNavBarItemState createState() => _MessagesNavBarItemState();
}

class _MessagesNavBarItemState extends State<MessagesNavBarItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseCubit, BaseState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return OctoImage(
          image: state is MessagesBase
              ? const AssetImage("Assets/Images/message2.png")
              : const AssetImage("Assets/Images/message.png"),
          fit: BoxFit.contain,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
        );
      },
    );
  }
}
